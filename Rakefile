require "bundler/gem_tasks"
require_relative "lib/aseo_db"
task :mytask,[:argv1] do |t,argv|
  puts "#{argv}"
end

task :create_table,[:product] do |t,product|
  AseoDb::Video.init(product).create_table
end
