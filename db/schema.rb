# frozen_string_literal: true

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

ActiveRecord::Schema.define(version: 20_210_429_153_651) do
  create_table 'activities', force: :cascade do |t|
    t.string 'description'
    t.date 'start_date'
    t.date 'end_date'
    t.boolean 'finished'
    t.integer 'project_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['project_id'], name: 'index_activities_on_project_id'
  end

  create_table 'profiles', force: :cascade do |t|
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['email'], name: 'index_profiles_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_profiles_on_reset_password_token', unique: true
  end

  create_table 'projects', force: :cascade do |t|
    t.string 'description'
    t.date 'start_date'
    t.date 'end_date'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end
end
