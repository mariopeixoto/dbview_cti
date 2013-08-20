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

ActiveRecord::Schema.define(:version => 20130819040414) do

  create_table "cars", :force => true do |t|
    t.integer  "motor_vehicle_id"
    t.boolean  "stick_shift"
    t.boolean  "convertible"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "motor_cycles", :force => true do |t|
    t.integer  "motor_vehicle_id"
    t.boolean  "offroad"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "motor_vehicles", :force => true do |t|
    t.integer  "vehicle_id"
    t.string   "fuel"
    t.integer  "number_of_wheels"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "rocket_engines", :force => true do |t|
    t.integer  "space_ship_id"
    t.string   "name"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "space_ships", :force => true do |t|
    t.integer  "vehicle_id"
    t.boolean  "single_use"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "reliability"
  end

  create_table "space_shuttles", :force => true do |t|
    t.integer  "space_ship_id"
    t.integer  "power"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "vehicles", :force => true do |t|
    t.string   "name"
    t.integer  "mass"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_foreign_key "rocket_engines", "space_ships", :name => "rocket_engines_space_ship_id_fk"

  add_foreign_key "space_ships", "vehicles", :name => "space_ships_vehicle_id_fk"

  add_foreign_key "space_shuttles", "space_ships", :name => "space_shuttles_space_ship_id_fk"

end
