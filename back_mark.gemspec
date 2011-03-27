# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "back_mark/version"

Gem::Specification.new do |s|
  s.name        = "back_mark"
  s.version     = BackMark::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Satyaram B V"]
  s.email       = ["bvsatyaram AT gmail DOT com"]
  s.homepage    = "http://bvsatyaram.com"
  s.summary     = %q{Mark pages with labels that can be linked back from future pages as back links}
  s.description = %q{Mark pages with labels that can be linked back from future pages as back links}

  s.rubyforge_project = "back_mark"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
