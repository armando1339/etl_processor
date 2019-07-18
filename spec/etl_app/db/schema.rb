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

ActiveRecord::Schema.define(version: 2019_07_18_041952) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "units", force: :cascade do |t|
    t.string "price"
    t.string "name"
    t.string "description"
    t.string "width"
    t.string "length"
    t.string "height"
    t.string "door_height"
    t.string "door_width"
    t.string "door_type"
    t.string "access_type"
    t.string "floor"
    t.string "size"
    t.string "area"
    t.string "standard_rate"
    t.string "managed_rate"
    t.string "available_for_move_in"
    t.string "rentable"
    t.string "status"
    t.string "payment_status"
    t.string "current_ledger_id"
    t.string "current_tenant_id"
    t.string "combination_lock_number"
    t.string "attribute_description"
    t.string "deleted"
    t.string "damaged"
    t.string "complimentary"
    t.string "channel_rate"
    t.string "unit_amenities"
    t.string "unit_type"
    t.string "unit_group_id"
    t.string "external_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
