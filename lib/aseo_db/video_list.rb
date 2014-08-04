module AseoDb
  class VideoList < ActiveRecord::Base
    has_many :videos
    def self.init(product)
      self.table_name = "#{product}_video_lists"
      self
    end

    def self.create_table
      table_name = self.table_name
      return if ActiveRecord::Base.connection.tables.include?(table_name)
      ActiveRecord::Schema.define do 
        create_table table_name,options: "DEFAULT CHARSET=utf8" do |table|
          table.column :name, :string, limit: 200, null: false
          table.string :video_list_desc
          table.string :href
          table.datetime :updated_at
        end
      end
    end
  end
end
