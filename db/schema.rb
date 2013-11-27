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

ActiveRecord::Schema.define(version: 20131123233906) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "amounts", force: true do |t|
    t.integer  "food_id"
    t.integer  "ingredient_id"
    t.string   "quantity"
    t.string   "measurement"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "amounts", ["food_id", "ingredient_id"], name: "index_amounts_on_food_id_and_ingredient_id", using: :btree

  create_table "directions", force: true do |t|
    t.text     "description"
    t.integer  "step"
    t.integer  "food_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "directions", ["food_id"], name: "index_directions_on_food_id", using: :btree

  create_table "foods", force: true do |t|
    t.string   "name"
    t.boolean  "is_vegitarian",  default: false
    t.boolean  "is_glutan_free", default: false
    t.integer  "calories"
    t.integer  "fat"
    t.integer  "protein"
    t.integer  "carbs"
    t.integer  "prep_time"
    t.integer  "cook_time"
    t.integer  "servings"
    t.integer  "type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "foods_meals", force: true do |t|
    t.integer "meal_id"
    t.integer "food_id"
  end

  add_index "foods_meals", ["meal_id", "food_id"], name: "index_foods_meals_on_meal_id_and_food_id", using: :btree

  create_table "ingredients", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "meals", force: true do |t|
    t.string   "name"
    t.boolean  "is_vegitarian",  default: false
    t.boolean  "is_glutan_free", default: false
    t.integer  "calories"
    t.integer  "fat"
    t.integer  "protein"
    t.integer  "carbs"
    t.integer  "prep_time"
    t.integer  "cook_time"
    t.integer  "servings"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "meals_plans", id: false, force: true do |t|
    t.integer "meal_id"
    t.integer "plan_id"
  end

  add_index "meals_plans", ["meal_id", "plan_id"], name: "index_meals_plans_on_meal_id_and_plan_id", using: :btree
  add_index "meals_plans", ["meal_id"], name: "index_meals_plans_on_meal_id", using: :btree

  create_table "plans", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "types", force: true do |t|
    t.boolean  "breakfast",  default: false
    t.string   "category"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.string   "remember_token"
    t.text     "bio"
    t.boolean  "private"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["remember_token"], name: "index_users_on_remember_token", unique: true, using: :btree

end
