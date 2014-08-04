module AseoDb
  class AmazonProduct < ActiveRecord::Base
    def self.init(product)
      self.table_name = "#{product}_amazon_products"
      self
    end
    def self.create_table
      table_name = self.table_name
      return if ActiveRecord::Base.connection.tables.include?(table_name)
      ActiveRecord::Schema.define do
        create_table table_name,options: "DEFAULT CHARSET utf8" do |table|
          table.column :asin,:string
          table.column :title,:string
          table.column :price,:decimal,precision: 10,scale: 2
          table.column :url,:string
          table.column :img_1,:string
          table.column :img_2,:string
          table.column :img_3,:string
          table.column :brand,:string
          table.column :features,:string
          table.column :descriptions,:string
          table.column :category_id,:string
          table.column :category_name,:string
        end
      end
    end
  end
end
