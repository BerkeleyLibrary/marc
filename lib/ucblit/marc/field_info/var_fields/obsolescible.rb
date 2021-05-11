module UCBLIT
  module Marc
    module FieldInfo
      module VarFields
        # Mixin for possibly-obsolete members of a MARC field info tree
        module Obsolescible

          # Description marker for obsolete elements in a MARC field list
          OBSOLETE = '[OBSOLETE]'.freeze

          # Return true if this Obsolescible's description marks
          # it as obsolete, false otherwise
          # @return [Boolean] true if obsolete, false otherwise
          def obsolete?
            return unless respond_to?(:desc)

            desc&.include?(OBSOLETE)
          end

          # Return a copy of this object with all obsolete nodes
          # in its subtree removed, or the object itself if it has
          # no descendants. Note that in the (pathological) situation
          # of a non-obsolete, non-leaf node with no non-obsolete
          # descendants, an empty object will be returned.
          def reject_obsoletes
            # default implementation for leaf nodes
            self
          end

          # Return true if this object's subtree is empty, false if
          # this object is a leaf node or has a non-empty subtree.
          def empty?
            # default implementation for leaf nodes
            false
          end

          protected

          # Utility method for deep-rejecting obsolete members and their
          # obsolete descendants from a list of Obsolescibles.
          # @param obs [Array<Obsolescible>] a list of Obsolescibles.
          # @return [Array<Obsolescible>] a filtered list with no obsolete nodes,
          #   and no non-leaf nodes with only obsolete descendants
          def _reject_obsolete(obs)
            obs.lazy
              .reject(&:obsolete?)
              .map(&:reject_obsoletes)
              .reject(&:empty?)
              .to_a
          end
        end
      end
    end
  end
end
