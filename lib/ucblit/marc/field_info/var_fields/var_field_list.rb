require 'ucblit/marc/field_info/var_fields/section'
require 'ucblit/marc/field_info/var_fields/obsolescible'

module UCBLIT
  module Marc
    module FieldInfo
      module VarFields
        class VarFieldList
          include Enumerable
          include Obsolescible

          attr_reader :desc, :sections

          def initialize(desc:, sections:)
            @desc = desc
            @sections = sections
          end

          def each(&block)
            return to_enum(:each) unless block_given?

            sections.each { |section| section.each(&block) }
          end

          def size
            sections.sum(&:size)
          end

          def reject_obsoletes
            VarFieldList.new(
              desc: desc,
              sections: _reject_obsolete(sections)
            )
          end

          def to_s
            sections.map(&:to_s).join("\n")
          end
        end
      end
    end
  end
end
