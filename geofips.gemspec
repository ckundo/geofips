# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "geofips/version"

Gem::Specification.new do |s|
  s.name        = "geofips"
  s.version     = Geofips::VERSION
  s.authors     = ["Cameron Cundiff"]
  s.email       = ["ckundo@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{FIPS geocodes to location coordinates}
  s.description = %q{Get latitude and longitude coordinates and bounds from FIPS location codes}

  s.rubyforge_project = "geofips"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "rspec", "~> 2.9.0"
end
