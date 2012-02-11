# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "walrus/rails/version"

Gem::Specification.new do |s|
  s.name        = "walrus-rails"
  s.version     = Walrus::Rails::VERSION
  s.authors     = ["Ben Marini"]
  s.email       = ["bmarini@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{JST style object for walrus.js templates }
  s.description = %q{JST style object for walrus.js templates }

  s.rubyforge_project = "walrus-rails"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  s.add_runtime_dependency "tilt"
  s.add_runtime_dependency "sprockets"
  s.add_runtime_dependency "actionpack"
end
