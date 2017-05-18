# coding: utf-8

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "jsonb_query/version"

Gem::Specification.new do |spec|
  spec.name          = "jsonb_query"
  spec.version       = JsonbQuery::VERSION
  spec.authors       = ["Michael Crismali"]
  spec.email         = ["michael@crismali.com"]

  spec.summary       = "Provides scopes for querying json and jsonb columns in Postgres"
  spec.description   = "Provides scopes for querying json and jsonb columns in Postgres"
  spec.homepage      = "https://github.com/devmynd/jsonb_query"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "appraisal", "~> 2.2.0"
  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "database_cleaner", "~> 1.6.0"
  spec.add_development_dependency "awesome_print"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "pry-doc"
  spec.add_development_dependency "pry-nav"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.6.0"
  spec.add_development_dependency "rubocop", "~> 0.48.1"
  spec.add_development_dependency "standalone_migrations", "~> 5.2.0"
end
