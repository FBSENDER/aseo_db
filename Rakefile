require "bundler/gem_tasks"
require_relative "lib/aseo_db"
task :mytask,[:argv1] do |t,argv|
  puts "#{argv}"
end

task :create_table_video,[:product] do |t,product|
  AseoDb::Video.init(product).create_table
end

task :create_table_video_list,[:product] do |t,product|
  AseoDb::VideoList.init(product).create_table
end
