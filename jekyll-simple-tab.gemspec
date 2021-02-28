
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "jekyll-simple-tab/version"

Gem::Specification.new do |spec|
  spec.name          = "jekyll-simple-tab"
  spec.version       = Jekyll::Simple::Tab::VERSION
  spec.authors       = ["Artur Gabitov"]
  spec.email         = ["applifort@gmail.com"]

  spec.summary       = "Jekyll tabs plugin"
  spec.description   = "Add tabs for your jekyll site. Ready for bootstrap 4"
  spec.homepage      = "https://github.com/Applifort/jekyll-simple-tab"
  spec.license       = "MIT"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'jekyll', '>= 3.0'
  spec.add_dependency 'slim', '>= 3.0'
end
