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

ActiveRecord::Schema[7.2].define(version: 2024_09_21_135729) do
  create_table "comportamientos", force: :cascade do |t|
    t.integer "tipo"
    t.string "descripcion"
    t.datetime "fecha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "usuario_id", null: false
    t.index ["usuario_id"], name: "index_comportamientos_on_usuario_id"
  end

  create_table "progresos", force: :cascade do |t|
    t.integer "paso"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "usuario_id", null: false
    t.index ["usuario_id"], name: "index_progresos_on_usuario_id"
  end

  create_table "recordatorios", force: :cascade do |t|
    t.integer "tipo"
    t.datetime "fecha_inicio"
    t.datetime "fecha_final"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "usuario_id", null: false
    t.index ["usuario_id"], name: "index_recordatorios_on_usuario_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nombre"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
  end

  add_foreign_key "comportamientos", "usuarios"
  add_foreign_key "progresos", "usuarios"
  add_foreign_key "recordatorios", "usuarios"
end
