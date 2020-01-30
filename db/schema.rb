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

ActiveRecord::Schema.define(version: 2020_01_30_140224) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "billings", force: :cascade do |t|
    t.string "code"
    t.string "payment_method"
    t.decimal "amount", precision: 5, scale: 2
    t.string "currency"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_billings_on_user_id"
  end

  create_table "faqs", force: :cascade do |t|
    t.string "question"
    t.string "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "execution"
    t.string "type"
    t.string "route"
    t.boolean "available"
    t.date "creation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "code"
  end

  create_table "identities", force: :cascade do |t|
    t.bigint "user_id"
    t.string "provider"
    t.string "uid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_identities_on_user_id"
  end

  create_table "institutions", force: :cascade do |t|
    t.integer "agno"
    t.integer "rbd"
    t.integer "dgv_rbd"
    t.string "nom_rbd"
    t.string "mrun"
    t.integer "rut_sostenedor"
    t.integer "p_juridica"
    t.integer "cod_reg_rbd"
    t.string "nom_reg_rbd_a"
    t.integer "cod_pro_rbd"
    t.integer "cod_com_rbd"
    t.string "nom_com_rbd"
    t.integer "cod_deprov_rbd"
    t.string "nom_deprov_rbd"
    t.integer "cod_depe"
    t.integer "cod_depe2"
    t.integer "rural_rbd"
    t.string "latitud"
    t.string "longitud"
    t.integer "convenio_pie"
    t.integer "ens_01"
    t.integer "ens_02"
    t.integer "ens_03"
    t.integer "ens_04"
    t.integer "ens_05"
    t.integer "ens_06"
    t.integer "ens_07"
    t.integer "ens_08"
    t.integer "ens_09"
    t.integer "ens_10"
    t.integer "ens_11"
    t.integer "matricula"
    t.integer "estado_estab"
    t.integer "ori_religiosa"
    t.string "ori_otro_glosa"
    t.string "pago_matricula"
    t.string "pago_mensual"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plays", force: :cascade do |t|
    t.integer "level"
    t.bigint "user_id"
    t.bigint "game_id"
    t.integer "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_plays_on_game_id"
    t.index ["user_id"], name: "index_plays_on_user_id"
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "latitude"
    t.float "longitude"
    t.string "address"
    t.string "name"
    t.string "lastname"
    t.integer "role"
    t.bigint "institution_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["institution_id"], name: "index_users_on_institution_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "billings", "users"
  add_foreign_key "identities", "users"
  add_foreign_key "plays", "games"
  add_foreign_key "plays", "users"
  add_foreign_key "users", "institutions"
end
