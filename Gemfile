source "https://rubygems.org"

gem "fastlane"
gem 'slather'
gem 'dotenv'
gem 'danger'
gem 'danger-swiftlint'
gem 'danger-auto_label'
gem 'cocoapods'

plugins_path = File.join(File.dirname(__FILE__), 'fastlane', 'Pluginfile')
eval_gemfile(plugins_path) if File.exist?(plugins_path)
