
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "embulk/test/version"

Gem::Specification.new do |spec|
  spec.name          = "embulk-test"
  spec.version       = Embulk::Test::VERSION
  spec.authors       = ["Hiroyuki Sato"]
  spec.email         = ["hiroysato@gmail.com"]

  spec.summary       = %q{Embulk test package for Ruby language}
  spec.description   = %q{Embulk test package for Ruby language}
  spec.homepage      = "https://github.com/hiroyuki-sato/embulk-test"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.platform = 'java'

  spec.add_development_dependency "bundler", ">= 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "test-unit", "~> 3.2"

end