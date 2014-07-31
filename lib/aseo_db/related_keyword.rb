module AseoDb
  class RelatedKeyword < ActiveRecord::Base
    def self.init(product)
      self.table_name = "#{product}_related_keywords"
      self
    end
    def self.create_table
      table_name = self.table_name
      return if ActiveRecord::Base.connection.tables.include?(table_name)
      ActiveRecord::Schema.define do
        create_table table_name,options: "DEFAULT CHARSET utf8" do |table|
          table.column :keyword_string, :string, null: false
          table.column :suggestions, :string
          table.column :related_keywords, :string
          table.column :is_popular,:bit
        end
        add_index table_name, [:keyword_string], name: 'keyword_string', using: :btree
      end
    end
  end
end
