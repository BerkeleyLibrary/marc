require 'marc'
require 'marc_extensions/subfield'

module MARCExtensions
  # Extensions for [MARC::XMLReader](https://rubydoc.info/gems/marc/MARC/DataField).
  module DataFieldExtensions
    # Returns a list of all the subfield codes in this data field.
    # @return [Array] the subfield codes
    def subfield_codes
      subfields.map(&:code)
    end

    # Whether this datafield and all its tag, indicators, and
    # subfields are frozen.
    #
    # @return [Boolean] true if the field is frozen, false otherwise.
    def frozen?
      [tag, indicator1, indicator2, subfields].all?(&:frozen?) &&
        subfields.all?(&:frozen?) &&
        super
    end

    # Recursively freezes this datafield, along with its tag, indicators,
    # and subfields.
    #
    # @return [MARC::DataField] this data field.
    def freeze
      [tag, indicator1, indicator2].each(&:freeze)
      subfields.each(&:freeze)
      subfields.freeze
      super
    end
  end
end

module MARC
  # Applies the extensions in {MARCExtensions::DataFieldExtensions}
  # @see https://rubydoc.info/gems/marc/MARC/DataField RubyGems documentation
  class DataField
    prepend MARCExtensions::DataFieldExtensions
  end
end
