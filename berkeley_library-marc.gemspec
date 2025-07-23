File.expand_path('lib', __dir__).tap do |lib|
  $LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
end

ruby_version = '~> 3.3'

require 'berkeley_library/marc/module_info'

Gem::Specification.new do |spec|
  spec.name = BerkeleyLibrary::Marc::ModuleInfo::NAME
  spec.author = BerkeleyLibrary::Marc::ModuleInfo::AUTHOR
  spec.email = BerkeleyLibrary::Marc::ModuleInfo::AUTHOR_EMAIL
  spec.summary = BerkeleyLibrary::Marc::ModuleInfo::SUMMARY
  spec.description = BerkeleyLibrary::Marc::ModuleInfo::DESCRIPTION
  spec.license = BerkeleyLibrary::Marc::ModuleInfo::LICENSE
  spec.version = BerkeleyLibrary::Marc::ModuleInfo::VERSION
  spec.homepage = BerkeleyLibrary::Marc::ModuleInfo::HOMEPAGE

  spec.files = `git ls-files -z`.split("\x0")
  spec.require_paths = ['lib']

  spec.required_ruby_version = ruby_version

  spec.add_dependency 'marc', '~> 1.0'
  spec.add_dependency 'parslet', '~> 2.0'
  spec.add_dependency 'ruby-marc-spec', '~> 0.1'

  spec.add_development_dependency 'bundle-audit', '~> 0.1'
  spec.add_development_dependency 'ci_reporter_rspec', '~> 1.0'
  spec.add_development_dependency 'colorize', '~> 0.8'
  spec.add_development_dependency 'dotenv', '~> 2.7'
  spec.add_development_dependency 'listen', '~> 3.2'
  spec.add_development_dependency 'nokogiri', '~> 1.13'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~> 3.10'
  spec.add_development_dependency 'rubocop', '~> 1.78.0'
  spec.add_development_dependency 'rubocop-rake', '~> 0.7.0'
  spec.add_development_dependency 'rubocop-rspec', '~> 3.6.0'
  spec.add_development_dependency 'ruby-prof'
  spec.add_development_dependency 'simplecov', '~> 0.21'
  spec.add_development_dependency 'simplecov-rcov', '~> 0.2'
  spec.add_development_dependency 'yard', '~> 0.9.27'
  spec.metadata['rubygems_mfa_required'] = 'true'
end
