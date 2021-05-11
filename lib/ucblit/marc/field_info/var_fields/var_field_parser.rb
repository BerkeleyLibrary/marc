require 'parslet'

module UCBLIT
  module Marc
    module FieldInfo
      module VarFields

        # rubocop:disable Style/BlockDelimiters
        class VarFieldParser < Parslet::Parser

          # ------------------------------------------------------------
          # structural

          rule(:blank) { match('[[:blank:]]') }

          rule(:nonhyphen) { match('[\t[:print:]&&[^-]]') }

          rule(:nonterminal_hyphen) { match('-(?!-?$)') }

          rule(:printable) { nonhyphen | nonterminal_hyphen }

          rule(:ln_br) { str("\r\n") | match('[\n\v\f\r\u0085\u2028\u2029]') }

          rule(:eof) { any.absent? }

          rule(:eol) { blank.repeat(0) >> ln_br }

          rule(:text) { printable.repeat(0) }

          rule(:comment) { blank.repeat(0) >> str('//') >> blank.repeat(0) >> text.as(:comment) }

          # non-captured
          rule(:nc) { (eol | comment).repeat(0) }

          rule(:indent) { (eol | comment).repeat(1) >> blank.repeat(1) }

          # ------------------------------------------------------------
          # indicators

          rule(:ind_header) { str('Indicators') }

          rule(:ind1_header) { str('First - ') >> text.as(:desc) }

          rule(:ind2_header) { str('Second - ') >> text.as(:desc) }

          rule(:ind_val) {
            # Yes, caps should be invalid; yes, TIND does it anyway
            match('[0-9a-zA-Z#]')
          }

          # Relatively rare -- e.g. 130
          rule(:ind_val_range) { match('[0-9]') >> str('-') >> match('[0-9]') }

          rule(:ind_def) { (ind_val_range | ind_val).as(:val) >> str(' - ') >> text.as(:desc) }

          rule(:ind1) { ind1_header >> (indent >> ind_def).repeat(0).as(:ind1) }

          rule(:ind2) { ind2_header >> (indent >> ind_def).repeat(0).as(:ind2) }

          rule(:indicators) do
            # TODO: enforce that we only get multiples when all but one are obsolete
            ind_header >> (indent >> (ind1 | ind2)).repeat(0)
          end

          # ------------------------------------------------------------
          # subfield definitions

          rule(:sf_header) { str('Subfield Codes') }

          rule(:sf_code) { match('[0-9a-z]') }

          # rare (e.g. 034a)
          rule(:subfield_value) { match('[^$ \t]').repeat(1).as(:val) >> str(' - ') >> text.as(:desc) }

          rule(:subfield_def) {
            str('$') >>
              (
                (sf_code.as(:code1) >> str('-') >> sf_code.as(:code2)) | # range - rarely used (e.g. 886a-z, 0-9)
                  sf_code.as(:code) # single code - typical case
              ) >>
              (str(' - ') | str(' ')) >> text.as(:desc) >>
              (indent >> subfield_value).repeat(0).as(:values)
          }

          rule(:subfield_codes) { sf_header.maybe >> (indent >> subfield_def).repeat(1) }

          # instrument or voices codes (only for 048)

          rule(:ivc_header) { str('Instrument or Voices Codes') }

          rule(:ivc_value) { match('[a-z]').repeat(2, 2).as(:val) >> str(' - ') >> text.as(:desc) }

          rule(:ivc_def) { ivc_header >> (indent >> ivc_value).repeat(1) }

          # ------------------------------------------------------------
          # variable fields

          rule(:vf_header) { match('[0-9]').repeat(3, 3).as(:tag) >> str(' - ') >> text.as(:desc) }

          rule(:vf) {
            vf_header >> (
              indent >> indicators.as(:indicators) >>
                indent >> subfield_codes.as(:subfield_codes) >>
                (indent >> ivc_def).as(:inst_or_voices_codes).maybe
            ).maybe
          }

          # ------------------------------------------------------------
          # sections

          rule(:section_header) { str('--') >> text.as(:desc) >> str('--') }

          rule(:section) { section_header.maybe >> (nc >> vf).repeat(1).as(:var_fields) >> nc }

          # ------------------------------------------------------------
          # entire list

          rule(:list) { (comment >> eol).repeat(0).as(:doc_comments) >> nc >> section.repeat(1).as(:sections) }

          root(:list)

          # ------------------------------------------------------------
          # Parser

          def parse(io, options = nil)
            opts = { reporter: Parslet::ErrorReporter::Deepest.new }
            opts.merge!(options) if options

            super(io, opts)
          end
        end
        # rubocop:enable Style/BlockDelimiters
      end
    end
  end
end
