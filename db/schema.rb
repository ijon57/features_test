# encoding: UTF-8
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

ActiveRecord::Schema.define(:version => 20131011143154) do

  create_table "features", :force => true do |t|
    t.string   "type"
    t.string   "value"
    t.integer  "associated_id"
    t.string   "associated_type"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "items", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "store_items", :force => true do |t|
    t.integer  "store_id"
    t.integer  "item_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "store_items", ["item_id"], :name => "index_store_items_on_item_id"
  add_index "store_items", ["store_id"], :name => "index_store_items_on_store_id"

  create_table "stores", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "user_items", :force => true do |t|
    t.integer  "user_id"
    t.integer  "item_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "user_items", ["item_id"], :name => "index_user_items_on_item_id"
  add_index "user_items", ["user_id"], :name => "index_user_items_on_user_id"

  create_table "users", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
