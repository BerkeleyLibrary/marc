module BerkeleyLibrary
  module Marc
    # Experimental module for parsing MARC documentation in the format used by the
    # Library of Congress [field list](https://www.loc.gov/marc/bibliographic/ecbdlist.html).
    module FieldInfo; end
  end
end

Dir.glob(File.expand_path('field_info/*.rb', __dir__)).sort.each(&method(:require))
