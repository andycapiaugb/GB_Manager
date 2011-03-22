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

ActiveRecord::Schema.define(:version => 20110321133645) do

  create_table "accidents", :force => true do |t|
    t.integer  "employee_id"
    t.date     "date"
    t.text     "description"
    t.integer  "invalidity"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "candidacies", :force => true do |t|
    t.integer  "solicitation_id"
    t.integer  "exam_id"
    t.date     "date"
    t.text     "results"
    t.text     "info"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "competencies", :force => true do |t|
    t.integer  "group_id"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "computer_assignments", :force => true do |t|
    t.integer  "employee_id"
    t.integer  "computer_id"
    t.date     "date"
    t.text     "info"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "computer_manufacturers", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "computers", :force => true do |t|
    t.integer  "manufacturer_id"
    t.integer  "model_id"
    t.boolean  "bit64"
    t.string   "serial"
    t.string   "ip_address"
    t.string   "hostname"
    t.string   "dns"
    t.string   "gateway"
    t.string   "wins"
    t.integer  "operating_system_id"
    t.integer  "ram_capacity"
    t.integer  "hd_capacity"
    t.integer  "file_format_id"
    t.integer  "processor_id"
    t.integer  "processor_capacity"
    t.boolean  "cd"
    t.boolean  "dvd"
    t.boolean  "floppy"
    t.integer  "screen_id"
    t.integer  "software_installation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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

  create_table "diploma_degrees", :force => true do |t|
    t.string   "degree"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "diplomas", :force => true do |t|
    t.integer  "diploma_degrees_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employees", :force => true do |t|
    t.integer  "person_id"
    t.integer  "number"
    t.boolean  "resigned"
    t.date     "resigned_date"
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
    t.string   "postal_code"
    t.string   "town"
    t.string   "kind"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "evaluation_competencies", :force => true do |t|
    t.integer  "competency_id"
    t.integer  "evaluation_id"
    t.integer  "level"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "evaluations", :force => true do |t|
    t.integer  "contract_id"
    t.integer  "evaluator_id"
    t.date     "date"
    t.string   "result"
    t.text     "info"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "exams", :force => true do |t|
    t.integer  "function_id"
    t.date     "date"
    t.text     "results"
    t.text     "info"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fiscal_years", :force => true do |t|
    t.integer  "organization_id"
    t.integer  "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "formations", :force => true do |t|
    t.integer  "fiscal_year_id"
    t.integer  "function_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "function_competencies", :force => true do |t|
    t.integer  "competency_id"
    t.integer  "function_id"
    t.integer  "level"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "functions", :force => true do |t|
    t.string   "name"
    t.integer  "formation_id"
    t.integer  "regulation_id"
    t.integer  "department_id"
    t.integer  "level_id"
    t.integer  "category_id"
    t.integer  "performance"
    t.date     "start"
    t.date     "end"
    t.boolean  "fading"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "irregular_performances", :force => true do |t|
    t.integer  "employee_id"
    t.integer  "event_id"
    t.date     "date"
    t.string   "description"
    t.time     "start"
    t.time     "end"
    t.text     "info"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "organizations", :force => true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.string   "website"
    t.string   "address"
    t.string   "postal_code"
    t.string   "town"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "sex"
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

  create_table "software_installations", :force => true do |t|
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "softwares", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.text     "requirements"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "solicitations", :force => true do |t|
    t.integer  "person_id"
    t.date     "date"
    t.text     "info"
    t.integer  "diploma_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
