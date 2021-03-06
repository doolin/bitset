# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'bitset/version'

Gem::Specification.new do |s|
  s.name = "bitset_bm"
  s.version = BitsetVersion::VERSION

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tyler McMullen", "Brendon McLean"]
  s.date = %q{2011-10-06}
  s.description = %q{A fast C-based Bitset. It supports the standard set operations as well as operations you may expect on bit arrays. (popcount, for instance)}
  s.email = %q{tbmcmullen@gmail.com}
  s.extensions = ["ext/bitset/extconf.rb"]
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.markdown"
  ]
  s.files = `git ls-files`.split($/)
  s.test_files = s.files.grep(%r{^(test|spec|features)/})
  s.homepage = %q{http://github.com/brendon9x/bitset}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{Bitset implementation.}

  s.add_development_dependency "rspec", "~> 2.0"
  s.add_development_dependency "rake", "~> 10.1"
  s.add_development_dependency 'rake-compiler', '>= 0.9.2'
end

