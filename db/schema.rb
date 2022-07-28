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

ActiveRecord::Schema.define(version: 2022_07_26_125824) do

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

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.string "dob"
    t.string "phone_number"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "gender"
    t.string "martial_status"
    t.string "blood_group"
    t.string "fathers_name"
    t.string "mothers_name"
    t.string "address"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_employees_on_email", unique: true
    t.index ["reset_password_token"], name: "index_employees_on_reset_password_token", unique: true
  end

  create_table "leaves", force: :cascade do |t|
    t.string "sick", default: "5"
    t.string "privileged", default: "15"
    t.string "breavement", default: "7"
    t.string "study_leave", default: "7"
    t.string "time_off", default: "5"
    t.string "maternity", default: "84"
    t.string "paternity", default: "7"
    t.string "optional", default: "5"
    t.integer "employee_id"
    t.string "status"
    t.string "type_of_leave"
    t.string "days"
    t.string "from_date"
    t.string "to_date"
    t.index ["employee_id"], name: "index_leaves_on_employee_id"
  end

  create_table "qualifications", force: :cascade do |t|
    t.string "designation"
    t.string "experience"
    t.string "pg_cgpa"
    t.string "pg_year"
    t.string "ug_cgpa"
    t.string "ug_year"
    t.string "diploma_cgpa"
    t.string "diploma_year"
    t.string "twelve_th_percent"
    t.string "twelve_th_year"
    t.string "ten_th_percent"
    t.string "ten_th_year"
    t.integer "employee_id"
    t.index ["employee_id"], name: "index_qualifications_on_employee_id"
  end

  create_table "salaries", force: :cascade do |t|
    t.string "basic_pay"
    t.string "hra"
    t.string "statutory_bonus"
    t.string "special_allowance"
    t.integer "employee_id"
    t.index ["employee_id"], name: "index_salaries_on_employee_id"
  end

end
