# -*- encoding: utf-8 -*-
# stub: inspec-core 4.23.15 ruby lib

Gem::Specification.new do |s|
  s.name = "inspec-core".freeze
  s.version = "4.23.15"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Chef InSpec Team".freeze]
  s.date = "2020-10-22"
  s.description = "InSpec provides a framework for creating end-to-end infrastructure tests. You can use it for integration or even compliance testing. Create fully portable test profiles and use them in your workflow to ensure stability and security. Integrate InSpec in your change lifecycle for local testing, CI/CD, and deployment verification. This has local support only. See the `inspec` gem for full support.".freeze
  s.email = ["inspec@chef.io".freeze]
  s.homepage = "https://github.com/inspec/inspec".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.required_ruby_version = Gem::Requirement.new("~> 2.4".freeze)
  s.rubygems_version = "3.1.4".freeze
  s.summary = "Infrastructure and compliance testing. Core library.".freeze

  s.installed_by_version = "3.1.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<chef-telemetry>.freeze, ["~> 1.0"])
    s.add_runtime_dependency(%q<license-acceptance>.freeze, [">= 0.2.13", "< 3.0"])
    s.add_runtime_dependency(%q<thor>.freeze, [">= 0.20", "< 2.0"])
    s.add_runtime_dependency(%q<json_schemer>.freeze, [">= 0.2.1", "< 0.2.12"])
    s.add_runtime_dependency(%q<method_source>.freeze, [">= 0.8", "< 2.0"])
    s.add_runtime_dependency(%q<rubyzip>.freeze, ["~> 1.2", ">= 1.2.2"])
    s.add_runtime_dependency(%q<rspec>.freeze, ["~> 3.9"])
    s.add_runtime_dependency(%q<rspec-its>.freeze, ["~> 1.2"])
    s.add_runtime_dependency(%q<pry>.freeze, ["~> 0.13"])
    s.add_runtime_dependency(%q<hashie>.freeze, ["~> 3.4"])
    s.add_runtime_dependency(%q<mixlib-log>.freeze, ["~> 3.0"])
    s.add_runtime_dependency(%q<sslshake>.freeze, ["~> 1.2"])
    s.add_runtime_dependency(%q<parallel>.freeze, ["~> 1.9"])
    s.add_runtime_dependency(%q<faraday>.freeze, [">= 0.9.0", "< 1.1"])
    s.add_runtime_dependency(%q<tty-table>.freeze, ["~> 0.10"])
    s.add_runtime_dependency(%q<tty-prompt>.freeze, ["~> 0.17"])
    s.add_runtime_dependency(%q<tomlrb>.freeze, ["~> 1.2.0"])
    s.add_runtime_dependency(%q<addressable>.freeze, ["~> 2.4"])
    s.add_runtime_dependency(%q<parslet>.freeze, ["~> 1.5"])
    s.add_runtime_dependency(%q<semverse>.freeze, ["~> 3.0"])
    s.add_runtime_dependency(%q<multipart-post>.freeze, ["~> 2.0"])
    s.add_runtime_dependency(%q<train-core>.freeze, ["~> 3.0"])
  else
    s.add_dependency(%q<chef-telemetry>.freeze, ["~> 1.0"])
    s.add_dependency(%q<license-acceptance>.freeze, [">= 0.2.13", "< 3.0"])
    s.add_dependency(%q<thor>.freeze, [">= 0.20", "< 2.0"])
    s.add_dependency(%q<json_schemer>.freeze, [">= 0.2.1", "< 0.2.12"])
    s.add_dependency(%q<method_source>.freeze, [">= 0.8", "< 2.0"])
    s.add_dependency(%q<rubyzip>.freeze, ["~> 1.2", ">= 1.2.2"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.9"])
    s.add_dependency(%q<rspec-its>.freeze, ["~> 1.2"])
    s.add_dependency(%q<pry>.freeze, ["~> 0.13"])
    s.add_dependency(%q<hashie>.freeze, ["~> 3.4"])
    s.add_dependency(%q<mixlib-log>.freeze, ["~> 3.0"])
    s.add_dependency(%q<sslshake>.freeze, ["~> 1.2"])
    s.add_dependency(%q<parallel>.freeze, ["~> 1.9"])
    s.add_dependency(%q<faraday>.freeze, [">= 0.9.0", "< 1.1"])
    s.add_dependency(%q<tty-table>.freeze, ["~> 0.10"])
    s.add_dependency(%q<tty-prompt>.freeze, ["~> 0.17"])
    s.add_dependency(%q<tomlrb>.freeze, ["~> 1.2.0"])
    s.add_dependency(%q<addressable>.freeze, ["~> 2.4"])
    s.add_dependency(%q<parslet>.freeze, ["~> 1.5"])
    s.add_dependency(%q<semverse>.freeze, ["~> 3.0"])
    s.add_dependency(%q<multipart-post>.freeze, ["~> 2.0"])
    s.add_dependency(%q<train-core>.freeze, ["~> 3.0"])
  end
end
