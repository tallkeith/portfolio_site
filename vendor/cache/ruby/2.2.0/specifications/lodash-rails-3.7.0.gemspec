# -*- encoding: utf-8 -*-
# stub: lodash-rails 3.7.0 ruby lib

Gem::Specification.new do |s|
  s.name = "lodash-rails"
  s.version = "3.7.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Richard Hubers"]
  s.date = "2015-04-17"
  s.description = "lodash for the Rails asset pipeline"
  s.email = ["richard.hubers@gmail.com"]
  s.homepage = "http://github.com/rh/lodash-rails"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.5"
  s.summary = "This gem makes lodash available for the Rails asset pipeline"

  s.installed_by_version = "2.4.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<railties>, [">= 3.1"])
    else
      s.add_dependency(%q<railties>, [">= 3.1"])
    end
  else
    s.add_dependency(%q<railties>, [">= 3.1"])
  end
end
