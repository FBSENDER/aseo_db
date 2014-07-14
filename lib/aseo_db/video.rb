module AseoDb
  class Video < ActiveRecord::Base
    belongs_to :video_list
    def self.init(product)
      self.table_name = "#{product}_videos"
      self
    end
    def self.create_table
      table_name = self.table_name
      return if ActiveRecord::Base.connection.tables.include?(table_name)
      ActiveRecord::Schema.define do
        create_table table_name,options: "DEFAULT CHARSET utf8" do |table|
          table.column :name, :string, null: false
          table.column :video_list_id, :int
          table.column :href, :string
          table.column :img_href, :string
          table.column :src, :string
          table.column :pv_sum, :int
          table.column :like_sum, :int
        end
        add_index table_name, [:name], name: 'name', unique: true,using: :btree
        add_index table_name, [:video_list_id], name: 'video_list_id', using: :btree
      end
    end
  end
end
