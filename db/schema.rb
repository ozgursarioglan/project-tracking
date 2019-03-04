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

ActiveRecord::Schema.define(version: 2019_02_24_160401) do

  create_table "issues", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.text "status"
    t.text "category"
    t.text "itype"
    t.bigint "project_id"
    t.string "priority"
    t.string "department"
    t.boolean "isprivate"
    t.bigint "assignedby_id"
    t.bigint "openedby_id"
    t.datetime "openeddate"
    t.bigint "closedby_id"
    t.datetime "closeddate"
    t.datetime "deadline"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["assignedby_id"], name: "index_issues_on_assignedby_id"
    t.index ["closedby_id"], name: "index_issues_on_closedby_id"
    t.index ["openedby_id"], name: "index_issues_on_openedby_id"
    t.index ["project_id"], name: "index_issues_on_project_id"
  end

  create_table "projects", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "company"
    t.integer "progress", default: 0
    t.string "status"
    t.datetime "startingdate"
    t.datetime "enddate"
    t.bigint "manager_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["manager_id"], name: "index_projects_on_manager_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "fullname", default: ""
    t.bigint "manager_id"
    t.string "company", default: ""
    t.string "department", default: ""
    t.boolean "isadmin", default: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["manager_id"], name: "index_users_on_manager_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "projects", "users", column: "manager_id"
end
