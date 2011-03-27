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

ActiveRecord::Schema.define(:version => 20110327232824) do

  create_table "cars", :force => true do |t|
    t.date     "date_acquired"
    t.integer  "version_id"
    t.string   "desc"
    t.string   "base_code"
    t.string   "variation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cars_collections", :id => false, :force => true do |t|
    t.integer "car_id"
    t.integer "collection_id"
  end

  create_table "castings", :force => true do |t|
    t.string   "name"
    t.integer  "copyright"
    t.integer  "manufacturer_id"
    t.string   "scale"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "collections", :force => true do |t|
    t.string   "name"
    t.string   "desc"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "manufacturers", :force => true do |t|
    t.string   "name"
    t.string   "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "versions", :force => true do |t|
    t.string   "main_color"
    t.string   "base_color"
    t.integer  "wheel_id"
    t.string   "markings"
    t.string   "color2"
    t.integer  "year"
    t.string   "series"
    t.string   "country"
    t.integer  "casting_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wheel_styles", :force => true do |t|
    t.string   "name"
    t.string   "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wheels", :force => true do |t|
    t.integer  "wheel_style_id"
    t.string   "color"
    t.string   "color2"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
