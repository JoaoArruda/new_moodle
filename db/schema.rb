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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 2019_04_06_013714) do
=======
ActiveRecord::Schema.define(version: 2019_04_06_010156) do
>>>>>>> 46b7bf2f11b37551d2b01a5f4ff1978bd00a37be

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

<<<<<<< HEAD
  create_table "cadastros", force: :cascade do |t|
    t.string "nome_aluno"
    t.string "pai"
    t.string "mae"
    t.string "endereco"
    t.integer "documento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nome_aluno"
    t.string "pai"
    t.string "mae"
    t.string "endereco"
    t.integer "documento"
=======
  create_table "disciplinas", force: :cascade do |t|
    t.string "nome"
    t.integer "carga_horaria"
>>>>>>> 46b7bf2f11b37551d2b01a5f4ff1978bd00a37be
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
