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

ActiveRecord::Schema.define(:version => 20140627154151) do

  

  create_table "businesses", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "business_name"
  end

  add_index "businesses", ["email"], :name => "index_businesses_on_email", :unique => true
  add_index "businesses", ["reset_password_token"], :name => "index_businesses_on_reset_password_token", :unique => true

  create_table "candidate_searches", :force => true do |t|
    t.string   "region"
    t.string   "experience"
    t.string   "qualifications"
    t.string   "age"
    t.string   "ethnicity"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "candidates", :force => true do |t|
    t.string   "region"
    t.string   "experience"
    t.string   "qualifications"
    t.string   "age"
    t.string   "ethnicity"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  

  
  

  

  
  

  create_table "user_details", :force => true do |t|
    t.date     "birthdate"
    t.string   "ethnicity"
    t.string   "university"
    t.string   "course"
    t.string   "past_experience"
    t.string   "personality_traits"
    t.string   "about_me"
    t.string   "photo"
    t.string   "reference_details_1"
    t.string   "reference_details_2"
    t.string   "contact_email"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.integer  "user_id"
    t.string   "location"
    t.string   "work_sector"
    t.string   "about_role"
    t.integer  "role_length"
    t.string   "social_link"
    t.boolean  "driving_license"
    t.boolean  "car"
    t.boolean  "criminal_conviction"
    t.string   "role"
    t.string   "logo"
    t.string   "contact_number"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "name"
    t.string   "provider"
    t.string   "uid"
    t.string   "avatar"
    t.boolean  "business"
    t.string   "logo"
    t.boolean  "student"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_roles", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], :name => "index_users_roles_on_user_id_and_role_id"

end
