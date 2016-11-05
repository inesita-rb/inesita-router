require 'bundler'
Bundler.require
Bundler::GemHelper.install_tasks

require 'rspec/core/rake_task'
require 'opal/rspec/rake_task'

ENV['SPEC_OPTS'] = '--color'

Opal::RSpec::RakeTask.new(:spec_opal) do |_server, task|
  task.pattern = 'spec/**/*_spec.rb'
  task.default_path = 'spec/'
end

task default: [:spec_opal]
