# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_210_705_113_852) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'blacklisted_tokens', force: :cascade do |t|
    t.string 'jti'
    t.bigint 'user_id', null: false
    t.datetime 'exp'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['jti'], name: 'index_blacklisted_tokens_on_jti', unique: true
    t.index ['user_id'], name: 'index_blacklisted_tokens_on_user_id'
  end

  create_table 'comments', force: :cascade do |t|
    t.text 'text'
    t.string 'file'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.bigint 'task_id'
    t.index ['task_id'], name: 'index_comments_on_task_id'
  end

  create_table 'projects', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.bigint 'user_id'
    t.index ['user_id'], name: 'index_projects_on_user_id'
  end

  create_table 'tasks', force: :cascade do |t|
    t.string 'name'
    t.boolean 'completed', default: false
    t.integer 'position'
    t.datetime 'deadline'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.bigint 'project_id'
    t.index ['project_id'], name: 'index_tasks_on_project_id'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'username'
    t.string 'password_digest'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  add_foreign_key 'blacklisted_tokens', 'users'
  add_foreign_key 'comments', 'tasks'
  add_foreign_key 'projects', 'users'
  add_foreign_key 'tasks', 'projects'
end
