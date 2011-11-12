# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "toy/pstore/version"

Gem::Specification.new do |s|
  s.name        = "toystore-pstore"
  s.version     = Toy::PStore::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Guy Taglang']
  s.email       = ['gtaglang@gmail.com']
  s.homepage    = ''
  s.summary     = %q{Better PStore integration for Toystore}
  s.description = %q{Better PStore integration for Toystore}

  s.add_dependency('toystore',      '~> 0.8.2')
  s.add_development_dependency('adapter-pstore')

  s.files         = `git ls-files`.split("\n") - ['specs.watchr']
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
