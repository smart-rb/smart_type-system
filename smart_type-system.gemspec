# frozen_string_literal: true

require_relative 'lib/smart_core/type_system/version'

Gem::Specification.new do |spec|
  spec.required_ruby_version = Gem::Requirement.new('>= 2.6')

  spec.name     = 'smart_type-system'
  spec.version  = SmartCore::TypeSystem::VERSION
  spec.authors  = ['Rustam Ibragimov']
  spec.email    = ['iamdaiver@gmail.com']
  spec.homepage = 'https://github.com/smart-rb/smart_type-system'

  spec.summary     = 'SmartCore::TypeSystem'
  spec.description = 'Abstract Type System with a support for various commonly used type libs'
  spec.license     = 'MIT'

  spec.metadata['homepage_uri']    = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  spec.metadata['changelog_uri']   = "#{spec.homepage}/blob/master/CHANGELOG.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'smart_types', '~> 0.4'

  spec.add_development_dependency 'rbs', '~> 1.0.5'
  spec.add_development_dependency 'steep', '~> 0.41.0'

  spec.add_development_dependency 'bundler',          '~> 2.2'
  spec.add_development_dependency 'rake',             '~> 13.0'
  spec.add_development_dependency 'rspec',            '~> 3.10'
  spec.add_development_dependency 'armitage-rubocop', '~> 1.8'
  spec.add_development_dependency 'simplecov',        '~> 0.21'
  spec.add_development_dependency 'pry',              '~> 0.14'
end
