require_relative 'lib/gb_cli_weather_api/version'

Gem::Specification.new do |spec|
  spec.name          = "gb_cli_weather_api"
  spec.version       = GbCliWeatherApi::VERSION
  spec.authors       = ["guysbryant"]
  spec.email         = ["guy.s.bryant@gmail.com"]

  spec.summary       = %q{Weather in the commandline via open weather API}
  spec.homepage      = "https://github.com/guysbryant/gb_cli_weather_api"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/guysbryant/gb_cli_weather_api"
  spec.metadata["changelog_uri"] = "https://github.com/guysbryant/gb_cli_weather_api"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rspec", "~> 3.2"
  spec.add_development_dependency "pry", "~> 0.12.2"
end
