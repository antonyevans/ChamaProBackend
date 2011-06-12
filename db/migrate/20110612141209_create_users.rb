class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.text :user_id
      t.text :first_name
      t.text :surname
      t.text :mobile_number
      t.text :email
      t.text :gender
      t.text :birthyear
      t.text :password
      t.datetime :created

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
