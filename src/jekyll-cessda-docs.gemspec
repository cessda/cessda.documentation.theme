# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-cessda-docs"
  spec.version       = "0.1.4"
  spec.authors       = ["openconcept"]
  spec.email         = ["post@openconcept.no"]

  spec.summary       = "Chrome for CESSDA tech docs"
  spec.homepage      = "https://cessda.eu"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README|_config\.yml)!i) }

  spec.add_runtime_dependency "jekyll", "~> 4.1"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.6"
end
