require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "tableasy"
    gem.summary = %Q{Rails tables builder gem}
    gem.description = %Q{Rails tables builder gem that makes creating tables painless. Includes ability to write custom column formatters or even customize row completely.
Includes library of predefined column formatters. Also has ability to generate "totals" row.}
    gem.email = "sinsiliux@gmail.com"
    gem.homepage = "http://github.com/sinsiliux/tableasy"
    gem.authors = ["Andrius Chamentauskas"]
    gem.add_development_dependency "rspec", ">= 2.0.0"
    gem.add_development_dependency "blueprints"
    gem.add_development_dependency "mocha"
    gem.add_dependency "activesupport"
    gem.add_dependency "activemodel"
    gem.add_dependency "actionpack"
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec) do |t|
    t.pattern = 'spec/**/*_spec.rb'
end

RSpec::Core::RakeTask.new(:rspec) do |t|
    t.pattern = 'spec/**/*_spec.rb'
    t.rcov = true
end

task :spec => :check_dependencies

task :default => :spec

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "tableasy #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
