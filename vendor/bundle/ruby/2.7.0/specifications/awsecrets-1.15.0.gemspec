# -*- encoding: utf-8 -*-
# stub: awsecrets 1.15.0 ruby lib

Gem::Specification.new do |s|
  s.name = "awsecrets".freeze
  s.version = "1.15.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["k1LoW".freeze]
  s.bindir = "exe".freeze
  s.date = "2020-10-23"
  s.description = "AWS credentials loader".freeze
  s.email = ["k1lowxb@gmail.com".freeze]
  s.homepage = "https://github.com/k1LoW/awsecrets".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.4".freeze
  s.summary = "AWS credentials loader".freeze

  s.installed_by_version = "3.1.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<aws-sdk>.freeze, [">= 2", "< 4"])
    s.add_runtime_dependency(%q<aws_config>.freeze, ["~> 0.1.0"])
    s.add_development_dependency(%q<bundler>.freeze, [">= 1.9", "< 3.0"])
    s.add_development_dependency(%q<octorelease>.freeze, [">= 0"])
    s.add_development_dependency(%q<pry>.freeze, [">= 0"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_development_dependency(%q<rubocop>.freeze, ["= 0.57"])
  else
    s.add_dependency(%q<aws-sdk>.freeze, [">= 2", "< 4"])
    s.add_dependency(%q<aws_config>.freeze, ["~> 0.1.0"])
    s.add_dependency(%q<bundler>.freeze, [">= 1.9", "< 3.0"])
    s.add_dependency(%q<octorelease>.freeze, [">= 0"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_dependency(%q<rubocop>.freeze, ["= 0.57"])
  end
end
