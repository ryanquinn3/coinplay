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

ActiveRecord::Schema.define(:version => 20140210225453) do

  create_table "game_types", :force => true do |t|
    t.integer  "game_id"
    t.string   "type"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "games", :force => true do |t|
    t.string   "name"
    t.string   "api_url"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "lobbies", :force => true do |t|
    t.integer  "team_one_id"
    t.integer  "team_two_id"
    t.integer  "game_id"
    t.integer  "map_id"
    t.integer  "game_type_id"
    t.string   "name"
    t.string   "password"
    t.float    "wager_amount"
    t.integer  "team_size"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "maps", :force => true do |t|
    t.integer  "game_id"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "user_game_profiles", :force => true do |t|
    t.integer  "game_id"
    t.integer  "user_id"
    t.string   "username"
    t.integer  "username_id"
    t.boolean  "verified",    :default => false
    t.integer  "region"
    t.integer  "league"
    t.integer  "rank"
    t.integer  "wins",        :default => 0
    t.integer  "losses",      :default => 0
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password_digest"
    t.float    "bitcoin_balance", :default => 0.0
    t.string   "type"
    t.boolean  "active",          :default => true
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

end
