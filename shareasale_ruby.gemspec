require_relative 'lib/shareasale_ruby/version'

Gem::Specification.new do |spec|
  spec.name          = "shareasale_ruby"
  spec.version       = ShareasaleRuby::VERSION
  spec.authors       = ['Credit Sage']
  spec.email         = ['michellec@creditsage.com']

  spec.summary       = 'Gem for communicating with ShareASale API'
  spec.description   = 'Gem for communicating with ShareASale API'
  spec.homepage      = 'https://www.creditsage.com/'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new(">= 2.7.6")

  spec.metadata["homepage_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'database_cleaner'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rails', '~> 6.1.7'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'sqlite3'
end
