$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "adobbs/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "adobbs"
  s.version     = Adobbs::VERSION
  s.authors     = ["Adones Pitogo"]
  s.email       = ["pitogo.adones@gmail.com"]
  s.homepage    = "https://github.com/adonespitogo/adobbs-engine"
  s.summary     = "Adobbs rails api engine."
  s.description = "Adobbs rails api engine."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.4"
  s.add_dependency "jbuilder", "~> 2.7"

  #s.add_development_dependency "sqlite3"
end
