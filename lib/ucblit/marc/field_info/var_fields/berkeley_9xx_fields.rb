module UCBLIT
  module Marc
    module FieldInfo
      module VarFields
        # class << self
        #
        #   SILS_RESERVED_FIELDS = [904..905, 908..910, 914..934, 937..944, 947, 949, 951..953, 960..989, 991..992, 997].freeze
        #
        #   def berkeley_9xx
        #     @berkeley_9xx ||= load_berkeley_9xx_fields.tap { |ff| ff.each { |f| IceNine.deep_freeze(f) } }
        #   end
        #
        #   def sils_reserved?(tag)
        #     if (tag_i = tag.to_i) >= 900
        #       SILS_RESERVED_FIELDS.each do |rf|
        #         return true if rf == tag_i || (rf.is_a?(Range) && rf.include?(tag_i))
        #       end
        #     end
        #
        #     false
        #   end
        #
        #   private
        #
        #   def load_berkeley_9xx_fields
        #     data_dir = File.expand_path('data', __dir__)
        #     field_list_path = File.join(data_dir, 'var_fields_berkeley_9xx.txt')
        #     ECBDListParser.parse(field_list_path)
        #   end
        # end
      end
    end
  end
end
