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

ActiveRecord::Schema.define(version: 20140625142417) do

  create_table "contacts", force: true do |t|
    t.string   "staff"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "contacttype"
    t.date     "contactdate"
    t.text     "contactdetails"
    t.integer  "spnumber"
    t.integer  "friend_id"
  end

  add_index "contacts", ["friend_id"], name: "index_contacts_on_friend_id"

  create_table "criminals", force: true do |t|
    t.date     "startdate"
    t.date     "enddate"
    t.text     "details"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "familysupports", force: true do |t|
    t.string   "familyname"
    t.text     "familycontact"
    t.boolean  "familycurrent"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "friends", force: true do |t|
    t.string   "forename"
    t.string   "surname"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "othernames"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "county"
    t.string   "postcode"
    t.string   "homephone"
    t.string   "mobile"
    t.string   "workphone"
    t.date     "dateofbirth"
    t.string   "ethnicity"
    t.string   "mainlanguage"
    t.string   "religion"
  end

  create_table "friendsupports", force: true do |t|
    t.string   "friendname"
    t.text     "friendcontact"
    t.boolean  "frientcurrent"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "learnings", force: true do |t|
    t.date     "startdate"
    t.string   "condition"
    t.text     "details"
    t.date     "enddate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "loneworks", force: true do |t|
    t.date     "assessdate"
    t.string   "staff"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "needsupport"
    t.text     "violence"
    t.integer  "violencerlc"
    t.integer  "violencerll"
    t.integer  "violencerr"
    t.text     "hazardapplicant"
    t.integer  "hazardapplicantrlc"
    t.integer  "hazardapplicantrll"
    t.integer  "hazardapplicantrr"
    t.text     "hazardother"
    t.integer  "hazardotherrlc"
    t.integer  "hazardotherrll"
    t.integer  "hazardotherrr"
    t.text     "riskmeasures"
    t.boolean  "assessorsign"
    t.boolean  "managersign"
    t.date     "riskdate"
  end

  create_table "mentals", force: true do |t|
    t.date     "startdate"
    t.string   "condition"
    t.text     "details"
    t.date     "enddate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nextofkins", force: true do |t|
    t.string   "nokname"
    t.string   "nokrelationship"
    t.text     "nokaddress"
    t.string   "noktel"
    t.string   "nokmobile"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "otherinfos", force: true do |t|
    t.date     "otherinfodate"
    t.text     "otherinfotext"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "otherservices", force: true do |t|
    t.string   "othername"
    t.text     "othercontact"
    t.boolean  "othercurrent"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "othersupports", force: true do |t|
    t.string   "othername"
    t.text     "othercontact"
    t.boolean  "othercurrent"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "owngps", force: true do |t|
    t.string   "gpname"
    t.string   "surgeryname"
    t.text     "surgeryaddress"
    t.string   "surgerytel"
    t.boolean  "current"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "physicals", force: true do |t|
    t.date     "startdate"
    t.string   "condition"
    t.text     "details"
    t.date     "enddate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "referrals", force: true do |t|
    t.date     "refdate"
    t.string   "referrer"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "referrerposition"
    t.text     "refcontacts"
    t.text     "refreason"
    t.boolean  "clientaware"
    t.string   "status"
    t.text     "immigrationstatus"
    t.boolean  "physicalhealth"
    t.boolean  "learningdisability"
    t.boolean  "mentalhealth"
    t.boolean  "criminalconviction"
    t.boolean  "social"
    t.boolean  "yot"
    t.boolean  "otherservice"
    t.boolean  "familysupport"
    t.boolean  "friendsupport"
    t.boolean  "othersupport"
  end

  create_table "socials", force: true do |t|
    t.string   "ssname"
    t.text     "sscontact"
    t.boolean  "sscurent"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spreviews", force: true do |t|
    t.date     "reviewdate"
    t.string   "spmet"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "ifnotwhy"
  end

  create_table "supportplans", force: true do |t|
    t.integer  "plannumber"
    t.date     "plandate"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "fullentry"
    t.date     "planreviewdate"
    t.string   "staff"
    t.string   "otherspresent"
    t.text     "goal"
    t.text     "comments"
    t.text     "need1"
    t.date     "need1date"
    t.text     "need2"
    t.date     "need2date"
    t.text     "need3"
    t.date     "need3date"
    t.text     "support1"
    t.date     "support1date"
    t.text     "support2"
    t.date     "support2date"
    t.text     "support3"
    t.date     "support3date"
    t.string   "Clientsign"
    t.string   "staffsign"
    t.boolean  "attachment"
  end

  create_table "users", force: true do |t|
    t.string   "crypted_password",          limit: 40
    t.string   "salt",                      limit: 40
    t.string   "remember_token"
    t.datetime "remember_token_expires_at"
    t.string   "name"
    t.string   "email_address"
    t.boolean  "administrator",                        default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "state",                                default: "invited"
    t.datetime "key_timestamp"
  end

  add_index "users", ["state"], name: "index_users_on_state"

  create_table "yots", force: true do |t|
    t.string   "yotname"
    t.text     "yotcontact"
    t.boolean  "yotcurrent"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
