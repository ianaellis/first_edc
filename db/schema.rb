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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131122202657) do

  create_table "crf_table", :force => true do |t|
    t.integer  "subject_id"
    t.integer  "pref_rand"
    t.integer  "treatment_group"
    t.integer  "study_site"
    t.integer  "sc_smpsq_1"
    t.integer  "sc_smpsq_2"
    t.integer  "sc_smpsq_3"
    t.integer  "sc_smpsq_4"
    t.integer  "sc_smpsq_4a"
    t.integer  "sc_smpsq_5"
    t.integer  "sc_smpsq_6"
    t.integer  "sc_smpsq_7"
    t.integer  "sc_smpsq_8"
    t.integer  "sc_smpsq_9"
    t.integer  "sc_smpsq_10"
    t.integer  "sc_exc_1"
    t.integer  "sc_exc_2"
    t.integer  "sc_exc_3"
    t.integer  "sc_pd_1"
    t.integer  "sc_pd_1a"
    t.integer  "sc_pd_2"
    t.integer  "sc_pd_3"
    t.integer  "sc_pd_4"
    t.string   "sc_pd_4o"
    t.integer  "sc_pd_5"
    t.integer  "sc_pd_6"
    t.integer  "sc_pe_1"
    t.integer  "sc_pe_2"
    t.integer  "sc_pe_3"
    t.integer  "sc_pe_4"
    t.string   "sc_pe_4a"
    t.integer  "sc_pe_5"
    t.integer  "sc_pe_5o"
    t.integer  "sc_ic_1"
    t.integer  "sc_ic_2"
    t.date     "sc_ic_3"
    t.string   "sc_ic_4"
    t.integer  "sc_ic_5"
    t.string   "sc_is_1"
    t.string   "sc_is_2"
    t.date     "sc_is_3"
    t.string   "sc_is_4"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "subject", :force => true do |t|
    t.integer  "subject_id"
    t.integer  "study_site"
    t.integer  "pref_rand"
    t.integer  "treatment_group"
    t.integer  "sc_smpsq_1"
    t.integer  "sc_smpsq_2"
    t.integer  "sc_smpsq_3"
    t.integer  "sc_smpsq_4"
    t.integer  "sc_smpsq_4a"
    t.integer  "sc_smpsq_5"
    t.integer  "sc_smpsq_6"
    t.integer  "sc_smpsq_7"
    t.integer  "sc_smpsq_8"
    t.integer  "sc_smpsq_9"
    t.integer  "sc_smpsq_10"
    t.integer  "sc_exc_1"
    t.integer  "sc_exc_2"
    t.integer  "sc_exc_3"
    t.integer  "sc_pd_1"
    t.integer  "sc_pd_1a"
    t.integer  "sc_pd_2"
    t.integer  "sc_pd_3"
    t.integer  "sc_pd_4"
    t.string   "sc_pd_4o"
    t.integer  "sc_pd_5"
    t.integer  "sc_pd_6"
    t.integer  "sc_pe_1"
    t.integer  "sc_pe_2"
    t.integer  "sc_pe_3"
    t.integer  "sc_pe_4"
    t.string   "sc_pe_4a"
    t.integer  "sc_pe_5"
    t.integer  "sc_pe_5o"
    t.integer  "sc_ic_1"
    t.integer  "sc_ic_2"
    t.date     "sc_ic_3"
    t.string   "sc_ic_4"
    t.integer  "sc_ic_5"
    t.string   "sc_is_1"
    t.string   "sc_is_2"
    t.date     "sc_is_3"
    t.string   "sc_is_4"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "subjects", :force => true do |t|
    t.integer  "subject_id"
    t.integer  "study_site"
    t.integer  "pref_rand"
    t.integer  "treatment_group"
    t.integer  "sc_smpsq_1"
    t.integer  "sc_smpsq_2"
    t.integer  "sc_smpsq_3"
    t.integer  "sc_smpsq_4"
    t.integer  "sc_smpsq_4a"
    t.integer  "sc_smpsq_5"
    t.integer  "sc_smpsq_6"
    t.integer  "sc_smpsq_7"
    t.integer  "sc_smpsq_8"
    t.integer  "sc_smpsq_9"
    t.integer  "sc_smpsq_10"
    t.integer  "sc_exc_1"
    t.integer  "sc_exc_2"
    t.integer  "sc_exc_3"
    t.integer  "sc_pd_1"
    t.integer  "sc_pd_1a"
    t.integer  "sc_pd_2"
    t.integer  "sc_pd_3"
    t.integer  "sc_pd_4"
    t.string   "sc_pd_4o"
    t.integer  "sc_pd_5"
    t.integer  "sc_pd_6"
    t.integer  "sc_pe_1"
    t.integer  "sc_pe_2"
    t.integer  "sc_pe_3"
    t.integer  "sc_pe_4"
    t.string   "sc_pe_4a"
    t.integer  "sc_pe_5"
    t.integer  "sc_pe_5o"
    t.integer  "sc_ic_1"
    t.integer  "sc_ic_2"
    t.date     "sc_ic_3"
    t.string   "sc_ic_4"
    t.integer  "sc_ic_5"
    t.string   "sc_is_1"
    t.string   "sc_is_2"
    t.date     "sc_is_3"
    t.string   "sc_is_4"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",                    :default => false
    t.boolean  "site_study_coordinator"
    t.boolean  "project_coordinator"
    t.boolean  "site_pi"
    t.boolean  "lead_pi_sc"
    t.boolean  "vetpals_facilitator"
    t.boolean  "other_site_investigators"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
