require 'ucblit/marc/field_info/var_fields/ind_def'
require 'ucblit/marc/field_info/var_fields/subfield_def'
require 'ucblit/marc/field_info/var_fields/instrument_or_voices_code'
require 'ucblit/marc/field_info/var_fields/obsolescible'

module UCBLIT
  module Marc
    module FieldInfo
      module VarFields
        class VarFieldDef
          include Comparable
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
            "#{tag} - #{desc}"
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

          def repeatable?
            @repeatable
          end

          def ind1
            ind_defs.select { |id| id.pos == 1 }.first
          end

          def ind2
            ind_defs.select { |id| id.pos == 2 }.first
          end

          def ind_defs
            @ind_defs ||= []
          end

          def add_ind_def(ind_def)
            raise ArgumentError, "Not an indicator definition: #{ind_def.inspect}" unless ind_def.is_a?(IndDef)
            raise ArgumentError, "Unknown indicator position: #{ind_def.pos}" unless [1, 2].include?(ind_def.pos)

            index = ind_def.pos - 1
            raise ArgumentError, "#{self}: Indicator #{index} already set: #{ind_defs[index]}" if ind_defs[index]

            ind_defs[index] = ind_def
          end

          def sf_defs
            @sf_defs ||= {}
          end

          def add_sf_def(sf_def)
            code = sf_def.code
            if (current = sf_defs[code])
              raise ArgumentError, "#{self}: Subfield code #{code} already defined: #{current}; can't set new definition #{sf_def}"
            end

            sf_defs[code] = sf_def
          end

          def <=>(other)
            return nil unless other.is_a?(VarFieldDef)

            %i[tag desc repeatable].each do |attr|
              o = send(attr) <=> other.send(attr)
              return o if o != 0

              # TODO: sort by indicator definitions, subfield codes etc.?
            end

            0
          end

        end
      end
    end
  end
end
