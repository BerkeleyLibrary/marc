require 'marc'

module MARCExtensions
  # Extensions to [MARC::FieldMap](https://rubydoc.info/gems/marc/MARC/FieldMap).
  module FieldMapExtensions

    # Gets the specified fields in order by tag.
    #
    # @overload each_sorted_by_tag(tags, &block)
    #   Yields each specified field.
    #   @param tags [String, Enumerable<String>] A tag, range of tags, array of tags, or similar
    #   @yieldparam field [MARC::ControlField, MARC::DataField] Each field.
    # @overload each_sorted_by_tag(tags)
    #   An enumerator of the specified variable fields, sorted by tag.
    #   @param tags [String, Enumerable<String>] A tag, range of tags, array of tags, or similar
    #   @return [Enumerator::Lazy<MARC::ControlField, MARC::DataField>] the fields
    # @overload each_sorted_by_tag(&block)
    #   Yields all fields, sorted by tag.
    #   @yieldparam field [MARC::ControlField, MARC::DataField] Each field.
    # @overload each_sorted_by_tag
    #   An enumerator of all fields, sorted by tag.
    #   @return [Enumerator::Lazy<MARC::ControlField, MARC::DataField>] the fields
    def each_sorted_by_tag(tags = nil, &block)
      reindex unless @clean

      indices = indices_for(tags)
      fields = indices.map { |i| self[i] }
      # noinspection RubyMismatchedReturnType
      fields.each(&block)
    end

    # Recursively freezes all fields.
    # @return [MARC::FieldMap] this FieldMap.
    def freeze
      unless frozen?
        reindex unless @clean
        each(&:freeze)
      end

      super
    end

    private

    def indices_for(tags)
      sorted_tag_array(tags || tag_list)
        .lazy                 # prevent unnecessary allocations
        .map { |t| @tags[t] } # get indices for each tag
        .compact              # ignoring any tags we don't have fields for
        .flat_map { |x| x }   # flatten list of indices -- equiv. Array#flatten
    end

    def sorted_tag_array(tags)
      return Array(tags) if tags.is_a?(Range)

      Array(tags).sort
    end

  end
end

module MARC
  # Applies the extensions in {MARCExtensions::FieldMapExtensions}.
  # @see https://rubydoc.info/gems/marc/MARC/FieldMap RubyGems documentation
  class FieldMap
    prepend MARCExtensions::FieldMapExtensions
  end
end
