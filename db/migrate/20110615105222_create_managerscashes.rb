class CreateManagerscashes < ActiveRecord::Migration
  def self.up
    create_table :managerscashes do |t|
      t.string :user_id
      t.float :balance

      t.timestamps
    end
  end

  def self.down
    drop_table :managerscashes
  end
end
