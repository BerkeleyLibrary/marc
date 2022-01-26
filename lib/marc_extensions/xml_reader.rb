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
    # @overload initialize(file, options)
    #   @param file [String, IO] a string file path, or an IO object
    #   @option options parser [String] ('rexml') which parser to use
    #   @option options freeze [Boolean] (false) whether to freeze records as they're created
    # @overload initialize(file, parser: 'rexml', freeze: false)
    #   @param file [String, IO] a string file path, or an IO object
    #   @param parser [String] ('rexml') which parser to use
    #   @param freeze [Boolean] (false) whether to freeze records as they're created
    # @see MARCExtensions::RecordExtensions#freeze
    def initialize(*args)
      file, options, @freeze = destructure_args(args)
      super(file, options)

      # It's surprisingly tricky to get these into the general superclass
      # chain, so instead we just prepend them to the eigenclass
      if respond_to?(:yield_record)
        class << self; prepend(MARCExtensions::YieldFrozenRecord); end
      elsif respond_to?(:build_record, true)
        class << self; prepend(MARCExtensions::BuildFrozenRecord); end
      end
    end

    private

    # Handle either an options hash or keyword arguments in a way
    # that works under both Ruby 2.7 and Ruby 3.x
    def destructure_args(args)
      file = args[0]
      options = args[1] || {}
      freeze = options[:freeze] || false
      [file, options, freeze]
    end
  end

  # Class extensions for [MARC::XMLReader](https://rubydoc.info/gems/marc/MARC/XMLReader).
  module XMLReaderClassExtensions
    # Reads MARC records from the specified file or IO
    #
    # @overload read(file, options)
    #   @param file [String, IO] a string file path, or an IO object
    #   @option parser [String] ('rexml') which parser to use
    #   @option freeze [Boolean] (false) whether to freeze records as they're created
    # @overload read(file, parser: 'rexml', freeze: false)
    #   @param file [String, IO] a string file path, or an IO object
    #   @param parser [String] ('rexml') which parser to use
    #   @param freeze [Boolean] (false) whether to freeze records as they're created
    def read(*args)
      new(*args)
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
