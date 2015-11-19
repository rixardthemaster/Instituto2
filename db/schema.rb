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

ActiveRecord::Schema.define(version: 20151115203352) do

  create_table "alumnos", force: :cascade do |t|
    t.string   "nombreal"
    t.string   "appal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "especialidads", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profesor_alumnos", force: :cascade do |t|
    t.integer  "profesor_id"
    t.integer  "alumno_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "profesor_alumnos", ["alumno_id"], name: "index_profesor_alumnos_on_alumno_id"
  add_index "profesor_alumnos", ["profesor_id"], name: "index_profesor_alumnos_on_profesor_id"

  create_table "profesors", force: :cascade do |t|
    t.string   "nombreprof"
    t.string   "approf"
    t.string   "correo"
    t.integer  "especialidad_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "profesors", ["especialidad_id"], name: "index_profesors_on_especialidad_id"

  create_table "usuarios", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true
  add_index "usuarios", ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true

end
