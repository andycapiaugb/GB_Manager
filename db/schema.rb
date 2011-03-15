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

ActiveRecord::Schema.define(:version => 20110314154141) do

  create_table "contracts", :force => true do |t|
    t.integer  "employee_id"
    t.integer  "function_id"
    t.string   "number"
    t.date     "start"
    t.date     "end"
    t.integer  "place_id"
    t.integer  "performance"
    t.integer  "titular_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employees", :force => true do |t|
    t.integer  "person_id"
    t.integer  "number"
    t.boolean  "resigned"
    t.text     "resigned_reason"
    t.boolean  "retired"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employments", :force => true do |t|
    t.integer  "person_id"
    t.integer  "entity_id"
    t.string   "function"
    t.date     "joined"
    t.date     "resigned"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entities", :force => true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.string   "website"
    t.string   "address"
    t.string   "kind"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "functions", :force => true do |t|
    t.string   "name"
    t.integer  "formation_id"
    t.integer  "regulation_id"
    t.integer  "departnemt_id"
    t.integer  "level_id"
    t.integer  "category_id"
    t.integer  "performance"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.string   "email"
    t.string   "address"
    t.string   "postal_code"
    t.string   "town"
    t.string   "national_number"
    t.string   "account"
    t.string   "nationality"
    t.string   "birthplace"
    t.date     "birthday"
    t.string   "civil_status"
    t.text     "info"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "replacements", :force => true do |t|
    t.integer  "replacer_id"
    t.integer  "replaced_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
