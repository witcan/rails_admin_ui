lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rails_admin_ui/version"

Gem::Specification.new do |spec|
  spec.name          = "rails_admin_ui"
  spec.version       = RailsAdminUi::VERSION
  spec.authors       = ["aiyuhang"]
  spec.email         = ["yh.ai@qq.com"]

  spec.summary       = %q{just for testing}
  spec.description   = %q{just for testing}
  spec.homepage      = "https://witcan.com"
  spec.license       = "MIT"

  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/witcan/rails_admin_ui.git"
  spec.metadata["changelog_uri"] = "https://github.com/witcan/rails_admin_ui.git"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
end
