# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "easystats/version"

Gem::Specification.new do |s|
  s.name        = "easystats"
  s.version     = Easystats::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Matthew Grigajtis", "Justin Campbell"]
  s.email       = ["matthew@grigajtis.org", "justin@justincampbell.me"]
  s.homepage    = "https://github.com/mgrigajtis/easystats"
  s.summary     = %q{Easy to use statistics functions}
  s.description = %q{This gem contains statistics functions that are very easy to use.  Much easier and much more complete than many of the other statistical gems available out there.  If you need a feature added, send me a message on Github!}

  s.rubyforge_project = "easystats"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "guard-rspec"
  s.add_development_dependency "rake"
  s.add_development_dependency "rspec"
  s.add_development_dependency "simplecov" if RUBY_DESCRIPTION.start_with? "ruby 1.9"
end
