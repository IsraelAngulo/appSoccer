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

ActiveRecord::Schema.define(:version => 20120129233137) do

  create_table "districts", :force => true do |t|
    t.string   "name"
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
    t.string   "name"
    t.string   "firtsName"
    t.string   "secondName"
    t.string   "sex"
    t.integer  "typeDOI"
    t.integer  "numeroDOI"
    t.string   "email"
    t.integer  "phone"
    t.string   "password"
    t.datetime "birthday"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "typedocument_id"
    t.integer  "sex_id"
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

end
