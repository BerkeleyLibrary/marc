require 'berkeley_library/marc/field_info/var_fields/subfield_val'
require 'berkeley_library/marc/field_info/var_fields/obsolescible'

module BerkeleyLibrary
  module Marc
    module FieldInfo
      module VarFields
        # A subfield definition.
        class SubfieldDef
          # TODO: destructure range codes in some useful way (e.g. 886a-z, 0-9)
          include Obsolescible

          attr_reader :code, :desc, :values

          def initialize(code:, desc:, values: [])
            @code = code
            @desc = desc
            @values = values
          end

          # @see Obsolescible#reject_obsoletes
          def reject_obsoletes
            SubfieldDef.new(code: code, desc: desc, values: _reject_obsolete(values))
          end

          # Each value definition for this subfield.
          # @overload each
          #   An enumerator of the value definitions for this subfield.
          #   @return [Enumerator<SubfieldVal>] the subfields.
          # @overload each(&block)
          #   Yields each value definition for this subfield.
          #   @yieldparam v [SubfieldVal] the subfield.
          def each_value(&block)
            return to_enum(:each_value) unless block_given?

            # noinspection RubyMismatchedReturnType
            values.each(&block)
          end

          INDENT = '    '.freeze
          private_constant :INDENT

          # see Object#to_s
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
