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

ActiveRecord::Schema.define(version: 2019_11_23_124238) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "bentos", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "date"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bookings", force: :cascade do |t|
    t.integer "seat"
    t.string "workshop"
    t.integer "price"
    t.bigint "trainee_id"
    t.datetime "created_at", null: false
    t.index ["trainee_id"], name: "index_bookings_on_trainee_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.string "surmane"
    t.string "email"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.string "email"
    t.string "phonenumber"
    t.string "adress"
    t.string "city"
    t.string "postalcode"
  end

  create_table "homes", force: :cascade do |t|
    t.string "photo1_home_page"
    t.string "photo2_home_page"
    t.string "photo3_home_page"
    t.string "photo_commande_index"
    t.string "photo_commande_new"
    t.string "photo_parcours"
    t.string "photo_contact"
    t.text "commander"
    t.text "parcours"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "quantities"
    t.string "day"
    t.boolean "delivery"
    t.string "delivery_place"
    t.integer "price"
    t.bigint "customer_id"
    t.datetime "created_at", null: false
    t.index ["customer_id"], name: "index_orders_on_customer_id"
  end

  create_table "trainees", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.string "email"
    t.string "phonenumber"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workshops", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "schedule"
    t.string "date"
    t.integer "seat"
    t.integer "price"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
