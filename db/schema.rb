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

ActiveRecord::Schema.define(version: 2021_05_25_023845) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "subscribers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deals", default: false
    t.boolean "reviews", default: false
    t.boolean "packages", default: false
    t.boolean "star_ships", default: false
    t.boolean "mars", default: false
    t.boolean "jupiter", default: false
    t.boolean "moon", default: false
    t.boolean "saturn", default: false
    t.boolean "uranus", default: false
    t.boolean "neptune", default: false
    t.boolean "the_nearest_black_hole", default: false
    t.boolean "the_endless_void", default: false
    t.string "frequency"
    t.boolean "the_sun", default: false
    t.boolean "pluto", default: false
    t.boolean "mercury", default: false
    t.boolean "venus", default: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
