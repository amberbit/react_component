$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "react_component/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "react_component"
  s.version     = ReactComponent::VERSION
  s.authors     = ["Hubert Łępicki, Marcin Nieborak"]
  s.email       = ["hubert.lepicki@amberbit.com, marcin.nieborak@amberbit.com"]
  s.homepage    = "http://github.com/amberbit/react_component"
  s.summary     = "Nicer DSL for your React components in Rails (instead of JSX)"
  s.description = ""
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  #s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 4.0.0"
  s.add_dependency "coffee-rails", ">= 4.0.0"
end

