# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_08_04_080701) do
  create_table "access_tokens", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "token"
  end

  create_table "application_records", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "callback_urls", force: :cascade do |t|
    t.string "transaction_type"
    t.date "trans_time"
    t.integer "trans_amount"
    t.integer "bill_ref_number"
    t.integer "msisdn"
    t.integer "business_shortcode"
    t.integer "trans_id"
    t.string "resultcode"
    t.integer "customer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_callback_urls_on_customer_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.integer "phone"
    t.boolean "policy"
    t.string "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fav_foods", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "food_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fav_restaurants", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "restaurant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "food_reviews", force: :cascade do |t|
    t.string "comment"
    t.integer "food_id"
    t.integer "customer_id"
    t.integer "likes"
    t.integer "dislikes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "foods", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.integer "discount"
    t.integer "restaurant_id"
    t.boolean "vegetarian"
    t.boolean "allergen"
    t.text "ingredients"
    t.string "category"
    t.string "picture"
    t.integer "sales"
    t.integer "ratings"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inventories", force: :cascade do |t|
    t.string "item"
    t.integer "quantity"
    t.integer "restaurant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "loyalties", force: :cascade do |t|
    t.integer "amount"
    t.integer "customer_id"
    t.integer "restaurant_id"
    t.boolean "used"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mpesas", force: :cascade do |t|
    t.string "checkoutRequestID"
    t.string "merchantRequestID"
    t.string "amount"
    t.string "mpesaReceiptNumber"
    t.string "phoneNumber"
    t.integer "customer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_mpesas_on_customer_id"
  end

  create_table "order_tracks", force: :cascade do |t|
    t.string "status"
    t.integer "order_id"
    t.integer "restaurant_id"
    t.integer "staff_id"
    t.integer "chef_id"
    t.boolean "paid"
    t.boolean "complete"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "items"
  end

  create_table "orders", force: :cascade do |t|
    t.text "items"
    t.float "discount"
    t.float "latitude"
    t.float "longitude"
    t.integer "customer_id"
    t.integer "restaurant_id"
    t.text "food_id"
    t.integer "service_fee"
    t.float "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "restaurant_reviews", force: :cascade do |t|
    t.string "comment"
    t.integer "restaurant_id"
    t.integer "customer_id"
    t.integer "likes"
    t.integer "dislikes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.integer "phone"
    t.boolean "policy"
    t.integer "pay_bill"
    t.integer "till_num"
    t.string "acc_num"
    t.string "ambience"
    t.string "picture"
    t.integer "ratings"
    t.integer "sales"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "cuisine"
    t.string "price_range"
    t.float "latitude"
    t.float "longitude"
  end

  create_table "staffs", force: :cascade do |t|
    t.string "name"
    t.string "title"
    t.integer "restaurant_id"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "callback_urls", "customers"
  add_foreign_key "mpesas", "customers"
end
