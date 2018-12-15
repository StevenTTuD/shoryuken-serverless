# -*- encoding: utf-8 -*-
# stub: shoryuken 4.0.2 ruby lib

Gem::Specification.new do |s|
  s.name = "shoryuken".freeze
  s.version = "4.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Pablo Cantero".freeze]
  s.date = "2018-11-26"
  s.description = "Shoryuken is a super efficient AWS SQS thread based message processor".freeze
  s.email = ["pablo@pablocantero.com".freeze]
  s.executables = ["shoryuken".freeze]
  s.files = ["bin/shoryuken".freeze]
  s.homepage = "https://github.com/phstc/shoryuken".freeze
  s.licenses = ["LGPL-3.0".freeze]
  s.rubygems_version = "2.5.2".freeze
  s.summary = "Shoryuken is a super efficient AWS SQS thread based message processor".freeze

  s.installed_by_version = "2.5.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.6"])
      s.add_development_dependency(%q<dotenv>.freeze, [">= 0"])
      s.add_development_dependency(%q<pry-byebug>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<aws-sdk-core>.freeze, [">= 2"])
      s.add_runtime_dependency(%q<concurrent-ruby>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<thor>.freeze, [">= 0"])
    else
      s.add_dependency(%q<bundler>.freeze, ["~> 1.6"])
      s.add_dependency(%q<dotenv>.freeze, [">= 0"])
      s.add_dependency(%q<pry-byebug>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_dependency(%q<aws-sdk-core>.freeze, [">= 2"])
      s.add_dependency(%q<concurrent-ruby>.freeze, [">= 0"])
      s.add_dependency(%q<thor>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.6"])
    s.add_dependency(%q<dotenv>.freeze, [">= 0"])
    s.add_dependency(%q<pry-byebug>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_dependency(%q<aws-sdk-core>.freeze, [">= 2"])
    s.add_dependency(%q<concurrent-ruby>.freeze, [">= 0"])
    s.add_dependency(%q<thor>.freeze, [">= 0"])
  end
end
