# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'remove_double_blank/version'

Gem::Specification.new do |spec|
  spec.name = 'remove_double_blank'
  spec.version = RemoveDoubleBlank::VERSION
  spec.authors = ['Jason Hsu']
  spec.email = ['rubygems@jasonhsu.com']

  spec.summary = 'The RemoveDoubleBlank gem reduces groups of consecutive blank lines into just one blank line.'
  spec.description = 'This gem can be used to make source code RuboCop-compliant.'
  spec.homepage = "https://github.com/jhsu802701/remove_double_blank"
  spec.license = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.13'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'

  spec.add_development_dependency 'simplecov'

  spec.add_development_dependency 'ruby-graphviz'

  spec.add_development_dependency 'gemsurance'

  spec.add_development_dependency 'bundler-audit'

  spec.add_development_dependency 'sandi_meter'

  spec.add_development_dependency 'rubocop'

  spec.add_development_dependency 'codeclimate-test-reporter'
end
