Dir.glob(File.expand_path('field_info/*.rb', __dir__)).sort.each(&method(:require))
