# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110615112116) do

  create_table "balances", :force => true do |t|
    t.string   "cliend_ID"
    t.float    "balance"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", :force => true do |t|
    t.string   "client_ID"
    t.string   "group_ID"
    t.string   "firstName"
    t.string   "surname"
    t.string   "mobileNumber"
    t.string   "email"
    t.string   "gender"
    t.string   "birthyear"
    t.string   "photo"
    t.datetime "created"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", :force => true do |t|
    t.string   "group_ID"
    t.string   "group_Name"
    t.text     "description"
    t.datetime "created"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "managerscashes", :force => true do |t|
    t.string   "user_id"
    t.float    "balance"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transactions", :force => true do |t|
    t.string   "transaction_ID"
    t.string   "client_ID"
    t.string   "type"
    t.datetime "created"
    t.float    "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.text     "user_id"
    t.text     "first_name"
    t.text     "surname"
    t.text     "mobile_number"
    t.text     "email"
    t.text     "gender"
    t.text     "birthyear"
    t.text     "password"
    t.datetime "created"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
