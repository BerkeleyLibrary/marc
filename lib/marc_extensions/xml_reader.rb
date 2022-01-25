require 'marc'
require 'marc_extensions/record'

module MARCExtensions
  # Extends [MARC::XMLReader](https://rubydoc.info/gems/marc/MARC/XMLReader).
  module XMLReaderExtensions
    # Adds a `:freeze` option to [MARC::XMLReader](https://rubydoc.info/gems/marc/MARC/XMLReader)
    # which freezes each record as it's constructed:
    #
    # ```ruby
    # reader = MARC::XMLReader.new('marc.xml', { freeze: true })
    # record = reader.first
    # record.frozen?
    # # => true
    # ```
    #
    # @see MARCExtensions::RecordExtensions#freeze
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

  # Class extensions for [MARC::XMLReader](https://rubydoc.info/gems/marc/MARC/XMLReader).
  module XMLReaderClassExtensions
    # Reads MARC records from the specified file or IO
    #
    # @param file [String, IO] a string file path, or an IO object
    # @return [MARC::XMLReader] a reader for the specified file or IO
    def read(file, options = {})
      new(file, options)
    end
  end

  # Extends [MARC::GenericPullParser](https://rubydoc.info/gems/marc/MARC/GenericPullParser)
  # to support `:freeze` option
  module YieldFrozenRecord
    # Builds a MARC record, freezing it if the `:freeze` option
    # was passed to the reader.
    # @@yieldparam record [MARC::Record] the record
    def yield_record
      @record[:record].freeze if @freeze
      super
    end
  end

  # Extends [MARC::REXMLReader](https://rubydoc.info/gems/marc/MARC/REXMLReader)
  # and [MARC::LibXMLReader](https://rubydoc.info/gems/marc/MARC/LibXMLReader)
  # to support `:freeze` option
  module BuildFrozenRecord
    # Builds a MARC record, freezing it if the `:freeze` option
    # was passed to the reader.
    # @return [MARC::Record] the record
    def build_record
      super.tap { |record| record.freeze if @freeze }
    end
  end
end

module MARC
  # Applies the extensions in {MARCExtensions::XMLReaderExtensions}
  # and {MARCExtensions::XMLReaderClassExtensions}.
  # @see https://rubydoc.info/gems/marc/MARC/XMLReader RubyGems documentation
  class XMLReader
    prepend MARCExtensions::XMLReaderExtensions

    class << self
      prepend MARCExtensions::XMLReaderClassExtensions
    end
  end
end
