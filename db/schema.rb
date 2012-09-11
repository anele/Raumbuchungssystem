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

ActiveRecord::Schema.define(:version => 20120911121309) do

  create_table "ausstattungs", :force => true do |t|
    t.string   "bezeichnung"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "kundes", :force => true do |t|
    t.string   "firma"
    t.string   "name"
    t.string   "vorname"
    t.string   "tel"
    t.string   "fax"
    t.string   "email"
    t.integer  "plz"
    t.string   "ort"
    t.string   "strasse"
    t.string   "haus_nr"
    t.integer  "raum_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "kundes", ["raum_id"], :name => "index_kundes_on_raum_id"

  create_table "raums", :force => true do |t|
    t.string   "name"
    t.integer  "pers_anz"
    t.integer  "groesse"
    t.string   "etage"
    t.integer  "status"
    t.integer  "ausstattung_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "raums", ["ausstattung_id"], :name => "index_raums_on_ausstattung_id"

end
