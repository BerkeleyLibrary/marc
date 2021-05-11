require 'ucblit/marc/field_info/var_fields/data/var_fields_standard_parsed'
require 'ucblit/marc/field_info/var_fields/var_field_transform'

module UCBLIT
  module Marc
    module FieldInfo
      module VarFields

        DATA_DIR = File.expand_path('var_fields/data', __dir__)
        PATH_STANDARD = File.join(DATA_DIR, 'var_fields_standard.txt')

        class << self

          def standard(obsolete: false)
            @standard_all ||= VarFieldTransform.new.apply(UCBLIT::Marc::FieldInfo::VarFields::STANDARD_PARSED)
            return @standard_all if obsolete

            @standard ||= @standard_all.reject_obsoletes
          end

        end
      end
    end
  end
end
