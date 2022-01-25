require 'marc'
require 'marc_extensions/record'

# ------------------------------------------------------------
# Extension modules

module MARCExtensions
  module XMLReaderExtensions
    def initialize(file, options = {})
      @freeze = options[:freeze]
      super(file, options)

      # It's surprisingly tricky to get these into the general superclass
      # chain, so instead we just prepend them to the eigenclass
      if respond_to?(:yield_record)
        class << self; prepend(MARCExtensions::YieldFrozenRecord); end
      elsif respond_to?(:build_record, true)
        class << self; prepend(MARCExtensions::BuildFrozenRecord); end
      end
    end
  end

  module XMLReaderClassExtensions
    def read(file, options = {})
      new(file, options)
    end
  end

  # Extensions for MARC::GenericPullParser
  module YieldFrozenRecord
    def yield_record
      @record[:record].freeze if @freeze
      super
    end
  end

  # Extensions for MARC::REXMLReader and MARC::LibXMLReader
  module BuildFrozenRecord
    def build_record
      super.tap { |record| record.freeze if @freeze }
    end
  end
end

# ------------------------------------------------------------
# Applying extensions

module MARC
  # @see https://rubydoc.info/gems/marc/MARC/XMLReader RubyGems documentation
  class XMLReader
    prepend MARCExtensions::XMLReaderExtensions

    class << self
      prepend MARCExtensions::XMLReaderClassExtensions
    end
  end
end
