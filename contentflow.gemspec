# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'contentflow/version'

Gem::Specification.new do |gem|
  gem.name          = "contentflow"
  gem.version       = Contentflow::VERSION
  gem.authors       = ["sergio1990"]
  gem.email         = ["sergeg1990@gmail.com"]
  gem.description   = "ContentFlow is a flexible CoverflowTM / ImageFlow like flow written in javascript, which can handle any kind of content for the Rails 3.1+ asset pipeline"
  gem.summary       = "ContentFlow for the Rails 3.1+ asset pipeline"
  gem.homepage      = "https://github.com/sergio1990/contentflow"

  gem.add_dependency "railties", ">= 3.0"
  gem.add_dependency "sass", ">= 3.2"
  gem.add_development_dependency "bundler", ">= 1.0"
  gem.add_development_dependency "rails",   ">= 3.1"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
