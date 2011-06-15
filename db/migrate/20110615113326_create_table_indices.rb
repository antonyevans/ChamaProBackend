class CreateTableIndices < ActiveRecord::Migration
  def self.up
    create_table :table_indices do |t|
      t.string :tableName
      t.string :table_URL

      t.timestamps
    end
    
    TableIndex.create :tableName => 'Users', :table_URL => 'users'
    TableIndex.create :tableName => 'Transactions', :table_URL => 'transactions'
    TableIndex.create :tableName => 'Managers Cash', :table_URL => 'managerscashes'
    TableIndex.create :tableName => 'Groups', :table_URL => 'groups'
    TableIndex.create :tableName => 'Balances', :table_URL => 'balances'
    TableIndex.create :tableName => 'Clients', :table_URL => 'clients' 
       
  end

  def self.down
    drop_table :table_indices
  end
end
