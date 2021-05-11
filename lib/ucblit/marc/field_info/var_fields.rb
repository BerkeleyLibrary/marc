require 'ucblit/marc/field_info/var_fields/data/var_fields_standard_parsed'
require 'ucblit/marc/field_info/var_fields/var_field_transform'

module UCBLIT
  module Marc
    module FieldInfo
      module VarFields

        DATA_DIR = File.expand_path('var_fields/data', __dir__)
        PATH_STANDARD = File.join(DATA_DIR, 'var_fields_standard.txt')

        class << self

          def standard
            parse_tree = UCBLIT::Marc::FieldInfo::VarFields::STANDARD_PARSED
            VarFieldTransform.new.apply(parse_tree).reject_obsoletes
          end

        end
      end
    end
  end
end
