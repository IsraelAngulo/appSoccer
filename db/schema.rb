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

ActiveRecord::Schema.define(:version => 20120212002652) do

  create_table "customers", :force => true do |t|
    t.string   "username"
    t.string   "firtsName"
    t.string   "secondName"
    t.integer  "numeroDOI"
    t.string   "address"
    t.date     "birthday"
    t.integer  "phone"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "typedocument_id"
    t.integer  "sex_id"
    t.integer  "district_id"
  end

  create_table "districts", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "field_week_days", :force => true do |t|
    t.integer  "field_id"
    t.integer  "weekDay_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "fields", :force => true do |t|
    t.string   "name"
    t.date     "day"
    t.time     "starname"
    t.time     "endtime"
    t.float    "dayprice"
    t.float    "nightprice"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "local_id"
  end

  create_table "hires", :force => true do |t|
    t.integer  "field_id"
    t.date     "dayCare"
    t.time     "hoursCare"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "locals", :force => true do |t|
    t.string   "descriptiveNameLocal"
    t.string   "address"
    t.string   "addressinGoogleMaps"
    t.string   "telephone"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.integer  "district_id"
  end

  create_table "owners", :force => true do |t|
    t.string   "username"
    t.string   "firtsName"
    t.string   "secondName"
    t.string   "sex"
    t.integer  "typeDOI"
    t.integer  "numeroDOI"
    t.integer  "phone"
    t.date     "birthday"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "typedocument_id"
    t.integer  "sex_id"
  end

  create_table "parties", :force => true do |t|
    t.string   "name"
    t.string   "award"
    t.integer  "limitvolumeteam"
    t.date     "limitdateregistration"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "photoalbums", :force => true do |t|
    t.string   "name"
    t.date     "date"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "field_id"
  end

  create_table "photos", :force => true do |t|
    t.string   "route"
    t.date     "date"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "portals", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sexes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "typedocuments", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "typeusers", :force => true do |t|
    t.string   "nameDescription"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "user_sessions", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.string   "email"
    t.string   "email_confirmation"
    t.integer  "typeuser_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "users", ["typeuser_id"], :name => "index_users_on_typeuser_id"

  create_table "week_days", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
