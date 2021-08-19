require 'berkeley_library/marc/field_info/var_fields/ind_val_def'
require 'berkeley_library/marc/field_info/var_fields/obsolescible'

module BerkeleyLibrary
  module Marc
    module FieldInfo
      module VarFields
        class IndDef
          # TODO: include Comparable
          include Obsolescible

          POS_NAMES = { 1 => 'First', 2 => 'Second' }.freeze

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
            lines = ["#{POS_NAMES[pos]} - #{desc}"]
            val_defs.each { |v| lines << "   #{v}" }
            lines.join("\n")
          end
        end
      end
    end
  end
end
