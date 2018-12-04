
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "US_2018_Tax/version"

Gem::Specification.new do |spec|
  spec.name          = "US_2018_Tax"
  spec.version       = US2018Tax::VERSION
  spec.authors       = ["wesley sprague"]
  spec.email         = ["wesleysprague@yahoo.com"]

  spec.summary       = %q{Gem for generating federal tax amounts based on 2018 tax brackets}

  spec.homepage      = "https://github.com/amplifyd1/US_2018_Tax"
  spec.license       = "MIT"


  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
