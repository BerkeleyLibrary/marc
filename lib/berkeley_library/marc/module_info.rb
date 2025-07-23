# Umbrella module for UC Berkeley Library Ruby code
module BerkeleyLibrary
  # MARC utilities for the UC Berkeley Library
  module Marc
    # Build information for this module
    class ModuleInfo

      # The gem name
      NAME = 'berkeley_library-marc'.freeze

      # The author
      AUTHORS = ['David Moles', 'maría a. matienzo'].freeze

      # Author contact email
      AUTHOR_EMAILS = ['dmoles@berkeley.edu', 'matienzo@berkeley.edu'].freeze

      # Gem summary
      SUMMARY = 'MARC utilities for the UC Berkeley Library'.freeze

      # Gem description
      DESCRIPTION = 'A gem providing MARC-related utility code and extensions to ruby-marc for the UC Berkeley Library'.freeze

      # Gem license
      LICENSE = 'MIT'.freeze

      # Gem version
      VERSION = '0.3.2'.freeze

      # Gem homepage
      HOMEPAGE = 'https://github.com/BerkeleyLibrary/marc'.freeze
    end
  end
end
