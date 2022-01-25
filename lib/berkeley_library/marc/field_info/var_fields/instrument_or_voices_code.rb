require 'berkeley_library/marc/field_info/var_fields/obsolescible'

module BerkeleyLibrary
  module Marc
    module FieldInfo
      module VarFields
        # An instrument or voices code.
        class InstrumentOrVoicesCode
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
