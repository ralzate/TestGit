# -*- encoding: utf-8 -*-
# stub: filterrific 2.0.5 ruby lib

Gem::Specification.new do |s|
  s.name = "filterrific"
  s.version = "2.0.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Jo Hund"]
  s.date = "2015-05-04"
  s.description = "Filterrific is a Rails Engine plugin that makes it easy to filter, search, and sort your ActiveRecord lists."
  s.email = "jhund@clearcove.ca"
  s.homepage = "http://filterrific.clearcove.ca"
  s.licenses = ["MIT"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3")
  s.rubygems_version = "2.2.2"
  s.summary = "A Rails engine plugin for filtering ActiveRecord lists."

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 3.1.0"])
      s.add_development_dependency(%q<bundler>, [">= 1.6.1"])
      s.add_development_dependency(%q<gem-release>, [">= 0.7.3"])
      s.add_development_dependency(%q<rake>, [">= 10.3.2"])
      s.add_development_dependency(%q<wwtd>, [">= 0.5.5"])
    else
      s.add_dependency(%q<rails>, [">= 3.1.0"])
      s.add_dependency(%q<bundler>, [">= 1.6.1"])
      s.add_dependency(%q<gem-release>, [">= 0.7.3"])
      s.add_dependency(%q<rake>, [">= 10.3.2"])
      s.add_dependency(%q<wwtd>, [">= 0.5.5"])
    end
  else
    s.add_dependency(%q<rails>, [">= 3.1.0"])
    s.add_dependency(%q<bundler>, [">= 1.6.1"])
    s.add_dependency(%q<gem-release>, [">= 0.7.3"])
    s.add_dependency(%q<rake>, [">= 10.3.2"])
    s.add_dependency(%q<wwtd>, [">= 0.5.5"])
  end
end
