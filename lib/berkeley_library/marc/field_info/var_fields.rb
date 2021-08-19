require 'berkeley_library/marc/field_info/var_fields/var_field_transform'
require 'berkeley_library/marc/field_info/var_fields/data'

module BerkeleyLibrary
  module Marc
    module FieldInfo
      module VarFields

        DATA_DIR = File.expand_path('var_fields/data', __dir__)
        PATH_STANDARD = File.join(DATA_DIR, 'var_fields_standard.txt')

        class << self

          def standard(obsolete: false)
            @standard_all ||= VarFieldTransform.new.apply(BerkeleyLibrary::Marc::FieldInfo::VarFields::STANDARD_PARSED)
            return @standard_all if obsolete

            @standard ||= @standard_all.reject_obsoletes
          end

          # def berkeley_9xx(obsolete: false)
          #   @berkeley_9xx_all ||= VarFieldTransform.new.apply(UCBLIT::Marc::FieldInfo::VarFields::BERKELEY_9XX_PARSED)
          #   return @berkeley_9xx_all if obsolete
          #
          #   @berkeley_9xx ||= @berkeley_9xx_all.reject_obsoletes
          # end
          #
          # def tind_reserved(obsolete: false)
          #   @tind_reserved_all ||= VarFieldTransform.new.apply(UCBLIT::Marc::FieldInfo::VarFields::TIND_RESERVED_PARSED)
          #   return @tind_reserved_all if obsolete
          #
          #   @tind_reserved ||= @tind_reserved_all.reject_obsoletes
          # end
          #
          # def ucblit_tind(obsolete: false)
          #   @ucblit_tind_all ||= VarFieldTransform.new.apply(UCBLIT::Marc::FieldInfo::VarFields::UCBLIT_TIND_PARSED)
          #   return @ucblit_tind_all if obsolete
          #
          #   @ucblit_tind ||= @ucblit_tind_all.reject_obsoletes
          # end
        end
      end
    end
  end
end
