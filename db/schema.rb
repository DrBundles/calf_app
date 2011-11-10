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

ActiveRecord::Schema.define(:version => 20111109005023) do

  create_table "calves", :force => true do |t|
    t.string   "lotNum"
    t.string   "contHyp"
    t.string   "gender"
    t.date     "sacrificeDate"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "age"
    t.integer  "hypDays"
    t.text     "notes"
    t.text     "pressNotes"
    t.integer  "base_HR"
    t.float    "base_cardiacOutput"
    t.integer  "base_cardiacIndex"
    t.integer  "base_mean_pap"
    t.integer  "base_sys_pap"
    t.integer  "base_dias_pap"
    t.integer  "base_pulse_pap"
    t.integer  "alt_HR"
    t.float    "alt_cardiacOutput"
    t.integer  "alt_cardiacIndex"
    t.integer  "alt_mean_pap"
    t.integer  "alt_sys_pap"
    t.integer  "alt_dias_pap"
    t.integer  "alt_pulse_pap"
  end

  create_table "import_exports", :force => true do |t|
    t.string   "attachment_file_name"
    t.string   "attachment_file_type"
    t.integer  "attachment_file_size"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
