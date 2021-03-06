# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100321013444) do

  create_table "comments", :force => true do |t|
    t.string   "type"
    t.string   "category"
    t.text     "ramble"
    t.string   "longitude"
    t.string   "latitude"
    t.string   "ip_address"
    t.string   "author"
    t.string   "vehicle_no"
    t.string   "short_description"
    t.integer  "transport_id"
    t.integer  "transport_line_id"
    t.integer  "direction_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "directions", :force => true do |t|
    t.string   "name"
    t.integer  "transport_line_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transport_lines", :force => true do |t|
    t.string   "type"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transports", :force => true do |t|
    t.string   "type"
    t.string   "company"
    t.string   "phone"
    t.string   "web"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
