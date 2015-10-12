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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20151009180901) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admissions", force: :cascade do |t|
    t.integer  "facility_id"
    t.integer  "patient_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "beds", force: :cascade do |t|
    t.string   "type",          limit: 256, null: false
    t.string   "HCPCS_code"
    t.string   "rail_type"
    t.string   "serial_number"
    t.integer  "dme_id"
    t.boolean  "active"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "dmes", force: :cascade do |t|
    t.string   "name",            limit: 256, null: false
    t.string   "email",           limit: 128, null: false
    t.string   "street_address",  limit: 256
    t.string   "city",            limit: 64
    t.string   "state",           limit: 8
    t.string   "zipcode",         limit: 64
    t.string   "insurances"
    t.string   "password_digest",             null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "employments", force: :cascade do |t|
    t.integer  "facility_id"
    t.integer  "professional_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "facilities", force: :cascade do |t|
    t.string   "name",           limit: 256, null: false
    t.string   "street_address", limit: 256
    t.string   "city",           limit: 64
    t.string   "state",          limit: 8
    t.string   "zipcode",        limit: 64
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "medicalrelations", force: :cascade do |t|
    t.integer  "professional_id"
    t.integer  "dme_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "patient_id"
    t.integer  "professional_id"
    t.integer  "facility_id"
    t.integer  "dme_id"
    t.string   "items"
    t.date     "date_approved"
    t.date     "date_filled"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string   "first_name",     limit: 128, null: false
    t.string   "last_name",      limit: 128, null: false
    t.string   "email",          limit: 128, null: false
    t.string   "street_address", limit: 256
    t.string   "city",           limit: 64
    t.string   "state",          limit: 8
    t.string   "zipcode",        limit: 64
    t.string   "phone_number",   limit: 128
    t.string   "notes"
    t.string   "height",         limit: 128, null: false
    t.string   "weight",         limit: 128, null: false
    t.string   "gender",         limit: 8
    t.date     "birthday"
    t.date     "discharge_date"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "physicians", force: :cascade do |t|
    t.string   "first_name",       limit: 128, null: false
    t.string   "last_name",        limit: 128, null: false
    t.string   "email",            limit: 256, null: false
    t.string   "specialty",        limit: 128
    t.string   "license_number",   limit: 256
    t.string   "registered_state", limit: 64
    t.string   "phone_number",     limit: 128
    t.string   "password_digest",              null: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "professionals", force: :cascade do |t|
    t.string   "first_name",       limit: 128, null: false
    t.string   "last_name",        limit: 128, null: false
    t.string   "email",            limit: 128, null: false
    t.string   "specialty",        limit: 128
    t.string   "license_number",   limit: 256
    t.string   "registered_state", limit: 64
    t.string   "phone_number",     limit: 128
    t.string   "password_digest",              null: false
    t.boolean  "physician"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "therapists", force: :cascade do |t|
    t.string   "first_name",       limit: 128, null: false
    t.string   "last_name",        limit: 128, null: false
    t.string   "email",            limit: 128, null: false
    t.string   "specialty",        limit: 128
    t.string   "license_number",   limit: 256
    t.string   "registered_state", limit: 64
    t.string   "phone_number",     limit: 128
    t.string   "password_digest",              null: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "wheelchairs", force: :cascade do |t|
    t.string   "type",          limit: 256,                 null: false
    t.string   "HCPCS_code"
    t.boolean  "leg_rests",                 default: false
    t.string   "serial_number", limit: 512
    t.integer  "dme_id"
    t.boolean  "active"
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
  end

end
