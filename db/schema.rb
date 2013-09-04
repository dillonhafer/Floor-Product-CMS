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

ActiveRecord::Schema.define(version: 20130903201456) do

  create_table "color_families", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "color_palettes", force: true do |t|
    t.string   "name"
    t.integer  "order_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "colors", force: true do |t|
    t.integer  "color_palette_id"
    t.string   "color_number"
    t.string   "name"
    t.string   "hex"
    t.boolean  "selects"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "color_family_id"
  end

  create_table "patterns", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_families", force: true do |t|
    t.integer  "product_category_id"
    t.string   "name"
    t.string   "sample_code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_lengths", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_thicknesses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_warranties", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_widths", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.integer  "product_family_id"
    t.string   "sku"
    t.string   "part_number"
    t.integer  "product_thickness_id"
    t.integer  "product_width_id"
    t.integer  "product_length_id"
    t.integer  "wallbase_profile_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "product_warranty_id"
    t.integer  "color_id"
    t.string   "weldrod"
    t.integer  "coordinating_color_id"
  end

  create_table "products_colors", id: false, force: true do |t|
    t.integer "product_id", null: false
    t.integer "color_id",   null: false
  end

  create_table "products_patterns", id: false, force: true do |t|
    t.integer "product_id", null: false
    t.integer "pattern_id", null: false
  end

  create_table "products_textures", id: false, force: true do |t|
    t.integer "product_id", null: false
    t.integer "texture_id", null: false
  end

  create_table "products_warranties", id: false, force: true do |t|
    t.integer "product_id",          null: false
    t.integer "product_warranty_id", null: false
  end

  create_table "textures", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "failed_attempts",        default: 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "authentication_token"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.boolean  "admin"
  end

  add_index "users", ["authentication_token"], name: "index_users_on_authentication_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree

  create_table "wallbase_collection_sections", force: true do |t|
    t.integer  "wallbase_collection_id"
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wallbase_collections", force: true do |t|
    t.string   "name"
    t.string   "material"
    t.boolean  "icon_1"
    t.boolean  "icon_2"
    t.boolean  "icon_3"
    t.boolean  "icon_4"
    t.boolean  "icon_5"
    t.text     "collection_description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wallbase_profile_color_palettes", id: false, force: true do |t|
    t.integer "wallbase_profile_id", null: false
    t.integer "color_palette_id",    null: false
  end

  create_table "wallbase_profiles", force: true do |t|
    t.integer  "wallbase_style_type_id"
    t.float    "size"
    t.string   "name"
    t.string   "uuid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wallbase_style_types", force: true do |t|
    t.string   "name"
    t.integer  "wallbase_collection_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
