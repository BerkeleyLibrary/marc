module BerkeleyLibrary
  module Marc
    module FieldInfo
      module VarFields
        # A subfield value definition.
        class SubfieldVal
          # TODO: include Comparable
          include Obsolescible

          attr_reader :val
          attr_reader :desc

          def initialize(val:, desc:)
            @val = val
            @desc = desc
          end

          # see Object#to_s
          def to_s
            "#{val} - #{desc}"
          end
        end
      end
    end
  end
end
