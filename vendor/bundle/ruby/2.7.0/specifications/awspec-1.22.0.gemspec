# -*- encoding: utf-8 -*-
# stub: awspec 1.22.0 ruby lib

Gem::Specification.new do |s|
  s.name = "awspec".freeze
  s.version = "1.22.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["k1LoW".freeze]
  s.bindir = "exe".freeze
  s.date = "2020-08-25"
  s.description = "RSpec tests for your AWS resources.".freeze
  s.email = ["k1lowxb@gmail.com".freeze]
  s.executables = ["awspec".freeze]
  s.files = ["exe/awspec".freeze]
  s.homepage = "https://github.com/k1LoW/awspec".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.1".freeze)
  s.rubygems_version = "3.1.4".freeze
  s.summary = "RSpec tests for your AWS resources.".freeze

  s.installed_by_version = "3.1.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<aws-sdk>.freeze, ["~> 3"])
    s.add_runtime_dependency(%q<awsecrets>.freeze, ["~> 1"])
    s.add_runtime_dependency(%q<dry-inflector>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<ipaddress>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_runtime_dependency(%q<rspec-its>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<term-ansicolor>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<thor>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<addressable>.freeze, [">= 0"])
    s.add_development_dependency(%q<bundler>.freeze, [">= 1.9", "< 3.0"])
    s.add_development_dependency(%q<octorelease>.freeze, [">= 0"])
    s.add_development_dependency(%q<pry>.freeze, [">= 0"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 12.0"])
    s.add_development_dependency(%q<rubocop>.freeze, ["~> 0.49.0"])
  else
    s.add_dependency(%q<aws-sdk>.freeze, ["~> 3"])
    s.add_dependency(%q<awsecrets>.freeze, ["~> 1"])
    s.add_dependency(%q<dry-inflector>.freeze, [">= 0"])
    s.add_dependency(%q<ipaddress>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_dependency(%q<rspec-its>.freeze, [">= 0"])
    s.add_dependency(%q<term-ansicolor>.freeze, [">= 0"])
    s.add_dependency(%q<thor>.freeze, [">= 0"])
    s.add_dependency(%q<addressable>.freeze, [">= 0"])
    s.add_dependency(%q<bundler>.freeze, [">= 1.9", "< 3.0"])
    s.add_dependency(%q<octorelease>.freeze, [">= 0"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, ["~> 12.0"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 0.49.0"])
  end
end
