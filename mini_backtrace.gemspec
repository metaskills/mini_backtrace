# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "mini_backtrace/version"

Gem::Specification.new do |s|
  s.name        = 'mini_backtrace'
  s.version     = MiniBacktrace::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Ken Collins']
  s.email       = ['ken@metaskills.net']
  s.homepage    = 'http://github.com/metaskills/mini_backtrace'
  s.summary     = 'MiniBacktrace - A minimal backtrace filter for MiniTest::Unit & Rails.'
  s.description = 'MiniBacktrace - A minimal backtrace filter for MiniTest::Unit & Rails.'
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']
  s.add_dependency('minitest', '> 1.2.0')
  s.add_dependency('rails', '> 2.3.2')
end

