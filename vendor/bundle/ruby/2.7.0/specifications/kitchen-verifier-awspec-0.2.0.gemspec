# -*- encoding: utf-8 -*-
# stub: kitchen-verifier-awspec 0.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "kitchen-verifier-awspec".freeze
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Neill Turner".freeze]
  s.date = "2019-05-12"
  s.description = "Awspec verifier for Test-Kitchen\n".freeze
  s.email = ["neillwturner@gmail.com".freeze]
  s.homepage = "https://github.com/neillturner/kitchen-verifier-awspec".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.rubygems_version = "3.1.4".freeze
  s.summary = "Awspec verifier for Test-Kitchen".freeze

  s.installed_by_version = "3.1.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<test-kitchen>.freeze, [">= 1.4"])
    s.add_runtime_dependency(%q<net-ssh>.freeze, [">= 3"])
  else
    s.add_dependency(%q<test-kitchen>.freeze, [">= 1.4"])
    s.add_dependency(%q<net-ssh>.freeze, [">= 3"])
  end
end
