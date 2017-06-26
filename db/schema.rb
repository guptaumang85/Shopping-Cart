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

ActiveRecord::Schema.define(version: 20170626095156) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "state"
    t.string "city"
    t.string "street"
    t.integer "pin_code"
    t.bigint "registration_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["registration_id"], name: "index_addresses_on_registration_id"
  end

  create_table "final_invoices", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invoice_details", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_infos", force: :cascade do |t|
    t.float "subtotal"
    t.float "tax"
    t.float "shipping_charge"
    t.float "total"
    t.bigint "order_status_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_status_id"], name: "index_order_infos_on_order_status_id"
  end

  create_table "order_items", force: :cascade do |t|
    t.bigint "product_id"
    t.bigint "order_info_id"
    t.float "price"
    t.integer "qty"
    t.float "total_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_info_id"], name: "index_order_items_on_order_info_id"
    t.index ["product_id"], name: "index_order_items_on_product_id"
  end

  create_table "order_statuses", force: :cascade do |t|
    t.string "order_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "product_name"
    t.integer "product_price"
    t.text "product_description"
    t.string "product_images"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "in_stock"
  end

  create_table "registrations", force: :cascade do |t|
    t.string "email", null: false
    t.string "password"
    t.string "last_name"
    t.string "first_name"
    t.date "date_of_birth"
    t.integer "contact_number"
  end

  create_table "shipping_addresses", force: :cascade do |t|
    t.bigint "registration_id"
    t.string "to_city"
    t.string "to_street"
    t.integer "to_pincode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["registration_id"], name: "index_shipping_addresses_on_registration_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
