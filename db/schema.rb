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

ActiveRecord::Schema.define(version: 2019_04_13_005616) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "aulas", force: :cascade do |t|
    t.bigint "disciplina_id"
    t.date "data"
    t.string "objetivo"
    t.string "realizado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["disciplina_id"], name: "index_aulas_on_disciplina_id"
  end

  create_table "cadastros", force: :cascade do |t|
    t.string "nome_aluno"
    t.string "pai"
    t.string "mae"
    t.string "endereco"
    t.integer "documento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cursos", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "disciplinas", force: :cascade do |t|
    t.string "nome"
    t.integer "carga_horaria"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "curso_id"
    t.index ["curso_id"], name: "index_disciplinas_on_curso_id"
  end

  create_table "matriculas", force: :cascade do |t|
    t.bigint "usuario_id"
    t.bigint "curso_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["curso_id"], name: "index_matriculas_on_curso_id"
    t.index ["usuario_id"], name: "index_matriculas_on_usuario_id"
  end

  create_table "trabalhos", force: :cascade do |t|
    t.bigint "disciplina_id"
    t.date "data_de_entrega"
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["disciplina_id"], name: "index_trabalhos_on_disciplina_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nome_aluno"
    t.string "pai"
    t.string "mae"
    t.string "endereco"
    t.integer "documento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "aulas", "disciplinas"
  add_foreign_key "disciplinas", "cursos"
  add_foreign_key "matriculas", "cursos"
  add_foreign_key "matriculas", "usuarios"
  add_foreign_key "trabalhos", "disciplinas"
end
