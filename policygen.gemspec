# frozen_string_literal: true

require_relative "lib/policygen/version"

Gem::Specification.new do |spec|
  spec.name = "policygen"
  spec.version = Policygen::VERSION
  spec.authors = ["Tim Marks"]
  spec.email = ["t@imothee.com"]

  spec.summary = "Easily generate privacy policies, terms of service, and cookie policies for your Rails app."
  spec.description = "Policygen makes it easy to generate privacy policies, terms of service, and cookie policies for your Rails app. It includes a generator to create the policies, and a view helper to render them in your app."
  spec.homepage = "https://policygen.xyz"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/imothee/policygen-rails"
  spec.metadata["changelog_uri"] = "https://github.com/imothee/policygen-rails/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_dependency "erubi", "~> 1.11"
  spec.add_dependency "i18n", "~> 1.14.5"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
