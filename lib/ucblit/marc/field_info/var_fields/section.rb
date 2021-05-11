require 'ucblit/marc/field_info/var_fields/var_field_def'
require 'ucblit/marc/field_info/var_fields/obsolescible'

module UCBLIT
  module Marc
    module FieldInfo
      module VarFields
        class Section
          include Enumerable
          include Obsolescible

          attr_reader :desc
          attr_reader :var_fields

          def initialize(desc:, var_fields:)
            @desc = desc
            @var_fields = var_fields
          end

          def each(&block)
            return to_enum(:each) unless block_given?

            var_fields.each(&block)
          end

          def size
            var_fields.size
          end

          def empty?
            var_fields.empty?
          end

          def reject_obsoletes
            Section.new(
              desc: desc,
              var_fields: _reject_obsolete(var_fields)
            )
          end

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
