# encoding: utf-8

version = File.read(File.expand_path("VERSION", __dir__)).strip

Gem::Specification.new do |s|
  s.name        = 'cucumber-create-meta'
  s.version     = version
  s.authors     = ["Vincent Prêtre"]
  s.description = 'Produce the meta message for Cucumber Ruby'
  s.summary     = "#{s.name}-#{s.version}"
  s.email       = 'cukes@googlegroups.com'
  s.homepage    = "https://github.com/cucumber/create-meta-ruby"
  s.platform    = Gem::Platform::RUBY
  s.license     = "MIT"
  s.required_ruby_version = ">= 2.3"

  s.metadata    = {
                    'bug_tracker_uri'   => 'https://github.com/cucumber/cucumber/issues',
                    'changelog_uri'     => 'https://github.com/cucumber/common/blob/main/gherkin/CHANGELOG.md',
                    'documentation_uri' => 'https://cucumber.io/docs/gherkin/',
                    'mailing_list_uri'  => 'https://groups.google.com/forum/#!forum/cukes',
                    'source_code_uri'   => 'https://github.com/cucumber/common/blob/main/gherkin/ruby',
                  }

  s.add_dependency 'cucumber-messages', '~> 17.0', '>= 17.0.1'
  s.add_dependency 'sys-uname', '~> 1.2', '>= 1.2.2'

  s.add_development_dependency 'rake', '~> 13.0', '>= 13.0.6'
  s.add_development_dependency 'rspec', '~> 3.10', '>= 3.10.0'

  s.executables      = []
  s.rubygems_version = ">= 1.6.1", '~> 0.8'
  s.files            = Dir[
    'README.md',
    'LICENSE',
    'lib/**/*'
  ]
  s.test_files       = Dir['spec/**/*']
  s.rdoc_options     = ["--charset=UTF-8"]
  s.require_path     = "lib"
end
