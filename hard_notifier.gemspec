# frozen_string_literal: true

require_relative "lib/hard_notifier/version"

Gem::Specification.new do |spec|
  spec.name = "hard_notifier"
  spec.version = HardNotifier::VERSION
  spec.authors = ["Vincenzo"]
  spec.email = ["infinity.scum@gmail.com"]

  spec.summary = "New Era Notifier"
  spec.description = "New Era Notifier"
  spec.homepage = "to be added"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = ""

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/nononito/hard_notifier"
  spec.metadata["changelog_uri"] = ""

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
