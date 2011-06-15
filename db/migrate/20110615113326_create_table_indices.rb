class CreateTableIndices < ActiveRecord::Migration
  def self.up
    create_table :table_indices do |t|
      t.string :tableName
      t.string :table_URL

      t.timestamps
    end
    
    TableIndex.create :tableName => 'Users' :table_URL = 'users'
    
  end

  def self.down
    drop_table :table_indices
  end
end
