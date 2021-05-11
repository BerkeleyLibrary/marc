require 'ucblit/marc/field_info/var_fields/ind_val_def'
require 'ucblit/marc/field_info/var_fields/obsolescible'

module UCBLIT
  module Marc
    module FieldInfo
      module VarFields
        class IndDef
          # TODO: include Comparable
          include Obsolescible

          attr_reader :pos
          attr_reader :desc
          attr_reader :val_defs

          def initialize(pos:, desc:, val_defs:)
            raise ArgumentError, "Not a valid indicator position: #{pos.inspect}" unless [1, 2].include?(pos)

            @pos = pos
            @desc = desc
            @val_defs = val_defs
          end

          def reject_obsoletes
            IndDef.new(pos: pos, desc: desc, val_defs: _reject_obsolete(val_defs))
          end

          def to_s
            "#{pos} - #{desc}"
          end
        end
      end
    end
  end
end
