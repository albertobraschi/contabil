# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090401204238) do

  create_table "activities", :force => true do |t|
    t.string   "branch"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "archives", :force => true do |t|
    t.integer  "costumer_id"
    t.integer  "catarc_id"
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "catarcs", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "configurations", :force => true do |t|
    t.string   "title"
    t.string   "email"
    t.string   "fone"
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contents", :force => true do |t|
    t.string   "title"
    t.text     "text"
    t.string   "source"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "costumers", :force => true do |t|
    t.string   "razao_social"
    t.string   "nome_fantasia"
    t.string   "cnpj"
    t.string   "inscricao_estadual"
    t.string   "inscricao_municipal"
    t.string   "responsavel"
    t.string   "cep"
    t.string   "endereco"
    t.string   "numero"
    t.string   "complemento"
    t.string   "bairro"
    t.string   "cidade"
    t.string   "estado"
    t.string   "telefone1"
    t.string   "telefone2"
    t.string   "telefone3"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "branch_id"
    t.integer  "user_id"
  end

  create_table "newnesses", :force => true do |t|
    t.string   "title"
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "notices", :force => true do |t|
    t.string   "title"
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "costumer_id"
  end

  create_table "pages", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.boolean  "featured"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "hashed_password"
    t.string   "salt"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
