$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "geobase/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "geobase"
  s.version     = Geobase::VERSION
  s.authors     = ["Valynteen Solutions", "Serghei Topor"]
  s.email       = ["info@valynteen.com"]
  s.homepage    = "http://www.valynteen.com"
  s.summary     = "Countries, regions, localities, ZIP codes and landmarks"
  s.description = "Countries, regions, localities, ZIP codes and landmarks"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0"
  s.add_dependency 'pg'

  s.add_development_dependency "sqlite3"
end
