require 'berkeley_library/marc/field_info/var_fields/subfield_val'
require 'berkeley_library/marc/field_info/var_fields/obsolescible'

module BerkeleyLibrary
  module Marc
    module FieldInfo
      module VarFields
        # TODO: destructure range codes in some useful way (e.g. 886a-z, 0-9)
        class SubfieldDef
          include Obsolescible

          attr_reader :code, :desc, :values

          def initialize(code:, desc:, values: [])
            @code = code
            @desc = desc
            @values = values
          end

          def reject_obsoletes
            SubfieldDef.new(code: code, desc: desc, values: _reject_obsolete(values))
          end

          def each_value(&block)
            return to_enum(:each_value) unless block_given?

            values.each(&block)
          end

          INDENT = '    '.freeze
          private_constant :INDENT

          def to_s
            lines = ["$#{code_str} - #{desc}"]
            values.each { |v| lines << INDENT + v.to_s }
            lines.join("\n")
          end

          private

          def code_str
            return code.to_s unless code.is_a?(Range)

            "#{code.first}-#{code.last}"
          end
        end
      end
    end
  end
end
