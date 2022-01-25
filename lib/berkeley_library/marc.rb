require 'marc_extensions'

module BerkeleyLibrary
  # Umbrella module for UC Berkeley Library MARC code.
  module Marc; end
end

Dir.glob(File.expand_path('marc/*.rb', __dir__)).sort.each(&method(:require))
