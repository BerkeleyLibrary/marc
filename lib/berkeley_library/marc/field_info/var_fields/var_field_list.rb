require 'berkeley_library/marc/field_info/var_fields/section'
require 'berkeley_library/marc/field_info/var_fields/obsolescible'

module BerkeleyLibrary
  module Marc
    module FieldInfo
      module VarFields
        # A list of variable fields grouped into sections.
        class VarFieldList
          include Enumerable
          include Obsolescible

          attr_reader :desc, :sections

          def initialize(desc:, sections:)
            @desc = desc
            @sections = sections
          end

          # Each section in this list.
          # @overload each
          #   An enumerator of the sections in this list.
          #   @return [Enumerator<Section>] the sections.
          # @overload each(&block)
          #   Yields each section in this list.
          #   @yieldparam s [Section] the section.
          def each(&block)
            return to_enum(:each) unless block_given?

            sections.each { |section| section.each(&block) }
          end

          # The number of sections in this list.
          def size
            sections.sum(&:size)
          end

          # @see Obsolescible#reject_obsoletes
          def reject_obsoletes
            VarFieldList.new(
              desc: desc,
              sections: _reject_obsolete(sections)
            )
          end

          # see Object#to_s
          def to_s
            sections.map(&:to_s).join("\n")
          end
        end
      end
    end
  end
end
