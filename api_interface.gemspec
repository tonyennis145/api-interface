$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "api_interface/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "api_interface"
  s.version     = ApiInterface::VERSION
  s.authors     = ["Tony Ennis"]
  s.email       = ["ennis.tony@gmail.com"]
  s.homepage    = "https://www.tonyennis.co"
  s.summary     = "An interface for your API."
  s.description = "An interface for your API."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "swagger-blocks"
  s.add_dependency "select2-rails"
  
end
