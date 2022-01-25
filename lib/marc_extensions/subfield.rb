require 'marc'

module MARCExtensions
  # Extensions to [MARC::Subfield](https://rubydoc.info/gems/marc/MARC/Subfield).
  module SubfieldExtensions

    # Recursively freezes this subfield, including its code and value.
    #
    # @return [Boolean] true if this subfield is frozen, false otherwise
    def frozen?
      [code, value].all?(&:frozen?) && super
    end

    # Whether this subfield and its code and value are frozen.
    # @return [MARC::Subfield] this subfield.
    def freeze
      [code, value].each(&:freeze)
      super
    end
  end
end

module MARC
  # Applies the extensions in {MARCExtensions::SubfieldExtensions}.
  # @see https://rubydoc.info/gems/marc/MARC/Subfield RubyGems documentation
  class Subfield
    prepend MARCExtensions::SubfieldExtensions
  end
end
