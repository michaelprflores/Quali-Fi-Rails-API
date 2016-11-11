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

ActiveRecord::Schema.define(version: 20161102160727) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applicants", force: :cascade do |t|
    t.string  "name"
    t.string  "skills"  # AM: I encourage you to revisit making Skill its own model. As your backend becomes more complex, this will make managing skills much easier.
    t.string  "education"
    t.integer "years_exp"
  end

  create_table "openings", force: :cascade do |t|
    t.string  "opening_name"
    t.string  "skills"
    t.string  "education"
    t.integer "years_exp"
  end

  create_table "openings_applicants", id: false, force: :cascade do |t|
    t.integer "opening_id"
    t.integer "applicant_id"
    t.index ["applicant_id"], name: "index_openings_applicants_on_applicant_id", using: :btree
    t.index ["opening_id"], name: "index_openings_applicants_on_opening_id", using: :btree
  end

end
