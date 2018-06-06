$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "admin/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "admin"
  s.version     = Admin::VERSION
  s.authors     = ["Ion"]
  s.email       = ["ion@mixbook.com"]
  s.homepage    = "https://mixbook.com"
  s.summary     = "Admin engine."
  s.description = "Admin panel for content management."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.22"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
