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

ActiveRecord::Schema.define(version: 20141017232428) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cidades", force: true do |t|
    t.string   "nome"
    t.integer  "estado_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cidades", ["estado_id"], name: "index_cidades_on_estado_id", using: :btree

  create_table "clients", force: true do |t|
    t.string   "name"
    t.string   "cpf_cnpj"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clients", ["user_id"], name: "index_clients_on_user_id", using: :btree

  create_table "estados", force: true do |t|
    t.string   "nome"
    t.string   "sigla"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "estimates", force: true do |t|
    t.integer  "client_id"
    t.integer  "professional_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "open"
    t.decimal  "value"
  end

  add_index "estimates", ["client_id"], name: "index_estimates_on_client_id", using: :btree
  add_index "estimates", ["professional_id"], name: "index_estimates_on_professional_id", using: :btree

  create_table "messages", force: true do |t|
    t.text     "content"
    t.integer  "estimate_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "messages", ["estimate_id"], name: "index_messages_on_estimate_id", using: :btree

  create_table "profession_professionals", force: true do |t|
    t.integer  "profession_id"
    t.integer  "professional_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "profession_professionals", ["profession_id"], name: "index_profession_professionals_on_profession_id", using: :btree
  add_index "profession_professionals", ["professional_id"], name: "index_profession_professionals_on_professional_id", using: :btree

  create_table "professionals", force: true do |t|
    t.string   "name"
    t.string   "cpf"
    t.text     "bio"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "profession_id"
  end

  add_index "professionals", ["profession_id"], name: "index_professionals_on_profession_id", using: :btree
  add_index "professionals", ["user_id"], name: "index_professionals_on_user_id", using: :btree

  create_table "professionals_professions", force: true do |t|
    t.integer  "professional_id"
    t.integer  "profession_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "professionals_professions", ["profession_id"], name: "index_professionals_professions_on_profession_id", using: :btree
  add_index "professionals_professions", ["professional_id"], name: "index_professionals_professions_on_professional_id", using: :btree

  create_table "professions", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
