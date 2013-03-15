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

ActiveRecord::Schema.define(:version => 20130315005043) do

  create_table "platforms", :force => true do |t|
    t.integer  "station_id"
    t.integer  "northeast_track_id"
    t.integer  "southwest_track_id"
    t.string   "heading"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "platforms", ["northeast_track_id"], :name => "index_platforms_on_northeast_track_id"
  add_index "platforms", ["southwest_track_id"], :name => "index_platforms_on_southwest_track_id"
  add_index "platforms", ["station_id"], :name => "index_platforms_on_station_id"

  create_table "stations", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tracks", :force => true do |t|
    t.string   "direction"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "terminal_id"
  end

end
