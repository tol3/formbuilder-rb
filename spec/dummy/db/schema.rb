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

ActiveRecord::Schema.define(version: 20140128000000) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "entries", force: true do |t|
    t.integer  "form_id"
    t.hstore   "responses",      default: {}, null: false
    t.text     "responses_text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entry_with_alternate_column_names", force: true do |t|
    t.integer  "form_id"
    t.hstore   "responses_alt",      default: {}, null: false
    t.text     "responses_alt_text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "formbuilder_entry_attachments", force: true do |t|
    t.string   "upload"
    t.string   "content_type"
    t.integer  "file_size"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "formbuilder_forms", force: true do |t|
    t.integer  "formable_id"
    t.string   "formable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "formbuilder_response_fields", force: true do |t|
    t.integer  "form_id"
    t.text     "label"
    t.string   "type"
    t.text     "field_options"
    t.integer  "sort_order"
    t.boolean  "required",      default: false
    t.boolean  "blind",         default: false
    t.boolean  "admin_only",    default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
