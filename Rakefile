require "bundler/gem_tasks"
require "rspec/core/rake_task"
import "lib/tasks/scout.rake"

RSpec::Core::RakeTask.new(:spec)

task :default => :spec
task :test => :spec

task :console do
  exec "irb -r mega_lotto -I ./lib"
end

