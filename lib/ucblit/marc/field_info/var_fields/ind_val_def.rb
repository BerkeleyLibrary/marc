require 'ucblit/marc/field_info/var_fields/obsolescible'

module UCBLIT
  module Marc
    module FieldInfo
      module VarFields
        class IndValDef
          # TODO: include Comparable
          include Obsolescible

          attr_reader :val
          attr_reader :desc

          # TODO: destructure range values in some useful way (e.g. 130)
          def initialize(val:, desc:)
            @val = val
            @desc = desc
          end

          def to_s
            "#{val} - #{desc}"
          end
        end
      end
    end
  end
end
