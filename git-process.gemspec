# -*- encoding: utf-8 -*-
require File.expand_path('../lib/git-process/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Jim Moore"]
  gem.email         = ["moore.jim@gmail.com"]
  gem.description   = %q{A set of scripts to make working with git easier and more consistent}
  gem.summary       = %q{A set of scripts for a good git process}
  gem.homepage      = "http://jdigger.github.com/git-process/"
  gem.license       = 'ASL2'

  gem.add_dependency "launchy", "~> 2.1.0" # web browser interaction
  gem.add_dependency "octokit", "~> 1.4.0" # GitHub API
  gem.add_dependency "json", "~> 1.7.3"
  gem.add_dependency "trollop", "~> 1.16.2" # CLI options parser
  gem.add_dependency "highline", "~> 1.6.12" # user CLI interaction
  gem.add_dependency "termios", "~> 0.9.4"  # used by highline to make things a little nicer
  gem.add_dependency "system_timer", "~> 1.2.4" # Needed by faraday via octokit

  gem.add_development_dependency "rake", "~> 0.9.2"
  gem.add_development_dependency "yard", "~> 0.8.2.1" # documentation generator
  gem.add_development_dependency "redcarpet", "~> 2.1.1"

  # Testing
  gem.add_development_dependency "rspec", "~> 2.10.0"
  gem.add_development_dependency "webmock", "~> 1.8.7" # network mocking

  gem.files         = `git ls-files`.split($\).delete_if{|f| f =~ /^\./}
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "git-process"
  gem.require_paths = ["lib"]
  gem.version       = GitProc::Version::STRING
  gem.platform      = Gem::Platform::RUBY
  gem.required_ruby_version = '>= 1.8.7'
end
