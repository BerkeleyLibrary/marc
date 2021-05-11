require 'ucblit/marc/field_info/var_fields/ind_def'
require 'ucblit/marc/field_info/var_fields/subfield_def'
require 'ucblit/marc/field_info/var_fields/instrument_or_voices_code'
require 'ucblit/marc/field_info/var_fields/obsolescible'

module UCBLIT
  module Marc
    module FieldInfo
      module VarFields
        class VarFieldDef
          include Obsolescible

          attr_reader :tag, :desc, :indicators, :subfield_codes, :inst_or_voices_codes

          def initialize(tag:, desc:, indicators: [], subfield_codes: [], inst_or_voices_codes: [])
            @tag = tag
            @desc = desc
            @indicators = indicators # TODO: split out ind1/ind2 (but what about obsolete?)
            @subfield_codes = subfield_codes
            @inst_or_voices_codes = inst_or_voices_codes
          end

          def to_s
            blocks = ["#{tag} - #{desc}"]

            concat_indented(blocks, indicators, 'Indicators')
            concat_indented(blocks, subfield_codes, 'Subfield Codes')
            concat_indented(blocks, inst_or_voices_codes, 'Instrument or Voices Codes')

            blocks.join("\n")
          end

          def reject_obsoletes
            VarFieldDef.new(
              tag: tag,
              desc: desc,
              indicators: _reject_obsolete(indicators),
              subfield_codes: _reject_obsolete(subfield_codes),
              inst_or_voices_codes: _reject_obsolete(inst_or_voices_codes)
            )
          end

          private

          INDENT = '   '.freeze
          private_constant :INDENT

          def concat_indented(blocks, values, header)
            return if values.empty?

            blocks << INDENT + header
            values.each do |v|
              lines = v.to_s.lines(chomp: true)
              lines.each { |line| blocks << INDENT + INDENT + line }
            end
          end

        end
      end
    end
  end
end
