require 'parslet'
require 'ucblit/marc/field_info/var_fields/var_field_list'

module UCBLIT
  module Marc
    module FieldInfo
      module VarFields
        # TODO: flag [OBSOLETE], (R), (NR)
        # rubocop:disable Style/BlockDelimiters
        class VarFieldTransform < Parslet::Transform

          class AnyValue
            attr_reader :val, :desc

            def initialize(val:, desc:)
              @val = val
              @desc = desc
            end

            def to_ind_val_def
              IndValDef.new(val: val, desc: desc)
            end

            def to_subfield_val
              SubfieldVal.new(val: val, desc: desc)
            end

            def to_ivc
              InstrumentOrVoicesCode.new(val: val, desc: desc)
            end
          end

          # ------------------------------------------------------------
          # structural elements

          # comment
          rule(comment: simple(:comment)) {
            comment
          }

          # value
          rule(val: simple(:val), desc: simple(:desc)) {
            AnyValue.new(val: val, desc: desc)
          }

          # ------------------------------------------------------------
          # indicators

          # ind1
          rule(desc: simple(:desc), ind1: sequence(:val_defs)) {
            IndDef.new(pos: 1, desc: desc, val_defs: val_defs.map(&:to_ind_val_def))
          }

          # ind2
          rule(desc: simple(:desc), ind2: sequence(:val_defs)) {
            IndDef.new(pos: 2, desc: desc, val_defs: val_defs.map(&:to_ind_val_def))
          }

          # ------------------------------------------------------------
          # subfield definitions

          # sf_code_def (single code)
          rule(code: simple(:code), desc: simple(:desc), values: sequence(:values)) {
            SubfieldDef.new(code: code, desc: desc, values: values.map(&:to_subfield_val))
          }

          # sf_code_def (range code, e.g. 886a-z, 0-9)
          rule(code1: simple(:code1), code2: simple(:code2), desc: simple(:desc), values: sequence(:values)) {
            code_range = begin
              (code1.to_s..code2.to_s)
            rescue ArgumentError => e
              e.message << " (#{code1.inspect}..#{code2.inspect})"
              raise
            end
            SubfieldDef.new(code: code_range, desc: desc, values: values.map(&:to_subfield_val))
          }

          # ------------------------------------------------------------
          # variable fields

          rule(
            tag: simple(:tag),
            desc: simple(:desc),
            indicators: sequence(:indicators),
            subfield_codes: sequence(:subfield_codes),
            inst_or_voices_codes: sequence(:inst_or_voices_codes)
          ) {
            VarFieldDef.new(
              tag: tag,
              desc: desc,
              indicators: indicators,
              subfield_codes: subfield_codes,
              # instrument or voices codes (only for 048)
              inst_or_voices_codes: inst_or_voices_codes.map(&:to_ivc)
            )
          }

          rule(
            tag: simple(:tag),
            desc: simple(:desc),
            indicators: sequence(:indicators),
            subfield_codes: sequence(:subfield_codes)
          ) {
            VarFieldDef.new(
              tag: tag,
              desc: desc,
              indicators: indicators,
              subfield_codes: subfield_codes
            )
          }

          rule(
            tag: simple(:tag),
            desc: simple(:desc),
            indicators: sequence(:indicators)
          ) {
            VarFieldDef.new(
              tag: tag,
              desc: desc,
              indicators: indicators
            )
          }

          rule(
            tag: simple(:tag),
            desc: simple(:desc),
            subfield_codes: sequence(:subfield_codes)
          ) {
            VarFieldDef.new(
              tag: tag,
              desc: desc,
              subfield_codes: subfield_codes
            )
          }

          rule(
            tag: simple(:tag),
            desc: simple(:desc)
          ) {
            VarFieldDef.new(
              tag: tag,
              desc: desc
            )
          }

          # ------------------------------------------------------------
          # Sections

          rule(desc: simple(:desc), var_fields: sequence(:var_fields)) {
            Section.new(desc: desc, var_fields: var_fields)
          }

          # ------------------------------------------------------------
          # List

          rule(doc_comments: sequence(:doc_comments), sections: sequence(:sections)) {
            desc = doc_comments.reject { |c| c.start_with?('TODO:') }.join("\n") # TODO: is "\n" best?
            VarFieldList.new(desc: desc, sections: sections)
          }
        end
        # rubocop:enable Style/BlockDelimiters
      end
    end
  end
end
