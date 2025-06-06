# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-cessda-docs"
  spec.version       = "0.1.12"
  spec.version       = "#{spec.version}.pre.#{ENV['GIT_COMMIT']}" if ENV['PRERELEASE']
  spec.authors       = ["openconcept"]
  spec.email         = ["post@openconcept.no"]

  spec.summary       = "Jekyll theme for CESSDA documentation sites"
  spec.homepage      = "https://cessda.eu"
  spec.license       = "MIT"

  spec.metadata = {
    "documentation_uri" => "https://docs.tech.cessda.eu/platform/documentation_tooling.html"
  }

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README|_config\.yml)!i) }

  spec.add_runtime_dependency "jekyll", "~> 4.1"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.6"
end
