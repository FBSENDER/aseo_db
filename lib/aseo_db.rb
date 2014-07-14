require "mysql2"
require "active_record"

dbconfig = {
  :adapter  => 'mysql2',
  :username => 'xxx',
  :password => 'xxx',
  :database => 'development',
  :host     => '127.0.0.1',
  :pool     => 10
}
ActiveRecord::Base.establish_connection(dbconfig)

require "aseo_db/version"
require "aseo_db/video"
require "aseo_db/video_list"
require "aseo_db/related_keyword"
require "aseo_db/amazon_product"
