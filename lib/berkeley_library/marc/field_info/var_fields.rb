require 'berkeley_library/marc/field_info/var_fields/var_field_transform'
require 'berkeley_library/marc/field_info/var_fields/data'

module BerkeleyLibrary
  module Marc
    module FieldInfo
      # Parsed documentation for variable fields.
      module VarFields

        # Path to machine-readable field documentation directory.
        DATA_DIR = File.expand_path('var_fields/data', __dir__)

        # Path to LOC standard variable field documentation.
        PATH_STANDARD = File.join(DATA_DIR, 'var_fields_standard.txt')

        class << self

          # Return information on all LOC standard variable fields.
          # @param obsolete [Boolean] whether to include fields documented as obsolete.
          def standard(obsolete: false)
            @standard_all ||= VarFieldTransform.new.apply(BerkeleyLibrary::Marc::FieldInfo::VarFields::STANDARD_PARSED)
            return @standard_all if obsolete

            @standard ||= @standard_all.reject_obsoletes
          end

          # Return information on UC Berkeley special 9xx fields.
          # @param obsolete [Boolean] whether to include fields documented as obsolete.
          def berkeley_9xx(obsolete: false)
            @berkeley_9xx_all ||= VarFieldTransform.new.apply(BerkeleyLibrary::Marc::FieldInfo::VarFields::BERKELEY_9XX_PARSED)
            return @berkeley_9xx_all if obsolete

            @berkeley_9xx ||= @berkeley_9xx_all.reject_obsoletes
          end

          # TODO: get these working
          # def tind_reserved(obsolete: false)
          #   @tind_reserved_all ||= VarFieldTransform.new.apply(BerkeleyLibrary::Marc::FieldInfo::VarFields::TIND_RESERVED_PARSED)
          #   return @tind_reserved_all if obsolete
          #
          #   @tind_reserved ||= @tind_reserved_all.reject_obsoletes
          # end
          #
          # def berkeley_tind(obsolete: false)
          #   @berkeley_tind_all ||= VarFieldTransform.new.apply(BerkeleyLibrary::Marc::FieldInfo::VarFields::BERKELEY_TIND_PARSED)
          #   return @berkeley_tind_all if obsolete
          #
          #   @berkeley_tind ||= @berkeley_tind_all.reject_obsoletes
          # end
        end
      end
    end
  end
end
