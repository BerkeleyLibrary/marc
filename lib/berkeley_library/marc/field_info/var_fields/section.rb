require 'berkeley_library/marc/field_info/var_fields/var_field_def'
require 'berkeley_library/marc/field_info/var_fields/obsolescible'

module BerkeleyLibrary
  module Marc
    module FieldInfo
      module VarFields
        # A section of a MARC field list
        class Section
          include Enumerable
          include Obsolescible

          attr_reader :desc
          attr_reader :var_fields

          def initialize(desc:, var_fields:)
            @desc = desc
            @var_fields = var_fields
          end

          # Each variable field definition in this section.
          # @overload each
          #   An enumerator of the fields in this section.
          #   @return [Enumerator<VarFieldDef>] the fields
          # @overload each(&block)
          #   Yields each field in this section.
          #   @yieldparam vf [VarFieldDef] the field.
          def each(&block)
            return to_enum(:each) unless block_given?

            var_fields.each(&block)
          end

          # The number of variable fields in this section.
          def size
            var_fields.size
          end

          # Returns true if this section contains no variable fields.
          def empty?
            var_fields.empty?
          end

          # @see Obsolescible#reject_obsoletes
          def reject_obsoletes
            Section.new(
              desc: desc,
              var_fields: _reject_obsolete(var_fields)
            )
          end

          # see Object#to_s
          def to_s
            blocks = ["--#{desc}--"]
            blocks.concat(var_fields.map(&:to_s))
            blocks.join("\n")
          end
        end
      end
    end
  end
end
