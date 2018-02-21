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

ActiveRecord::Schema.define(version: 20180221033431) do

  create_table "adresses", force: :cascade do |t|
    t.string "NumeroCivique"
    t.string "Rue"
    t.string "CodePostal"
    t.string "Ville"
    t.string "Province"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "client_etats_civils", force: :cascade do |t|
    t.integer "Client_id"
    t.integer "EtatsCivil_id"
    t.date "DateDebut"
    t.date "DateFin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Client_id"], name: "index_client_etats_civils_on_Client_id"
    t.index ["EtatsCivil_id"], name: "index_client_etats_civils_on_EtatsCivil_id"
  end

  create_table "client_has_conjoints", force: :cascade do |t|
    t.integer "Client_id"
    t.integer "Client_Has_Conjoint_id"
    t.date "DateDebut"
    t.date "DateFin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Client_Has_Conjoint_id"], name: "index_client_has_conjoints_on_Client_Has_Conjoint_id"
    t.index ["Client_id"], name: "index_client_has_conjoints_on_Client_id"
  end

  create_table "client_has_employeurs", force: :cascade do |t|
    t.integer "Client_id"
    t.integer "Employeur_id"
    t.date "DateDebut"
    t.date "DateFin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Client_id"], name: "index_client_has_employeurs_on_Client_id"
    t.index ["Employeur_id"], name: "index_client_has_employeurs_on_Employeur_id"
  end

  create_table "client_has_enfants", force: :cascade do |t|
    t.integer "Enfant_id"
    t.integer "Client_id"
    t.boolean "Lien"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Client_id"], name: "index_client_has_enfants_on_Client_id"
    t.index ["Enfant_id"], name: "index_client_has_enfants_on_Enfant_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "Prenom"
    t.string "Nom"
    t.date "DateNaissance"
    t.string "nas"
    t.integer "Adress_id"
    t.integer "NombresEnfants"
    t.integer "CompteTaxesProprietaire"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Adress_id"], name: "index_clients_on_Adress_id"
  end

  create_table "employeurs", force: :cascade do |t|
    t.string "Nom"
    t.integer "Adress_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Adress_id"], name: "index_employeurs_on_Adress_id"
  end

  create_table "enfants", force: :cascade do |t|
    t.string "Nom"
    t.string "Prenom"
    t.date "DateNaissance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "etats_civils", force: :cascade do |t|
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "etudes", force: :cascade do |t|
    t.string "SecteurEtudes"
    t.string "Niveau"
    t.date "DateDebut"
    t.date "DateComplition"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "client_id"
    t.integer "Institution_id"
  end

  create_table "institutions", force: :cascade do |t|
    t.string "Nom"
    t.integer "Adress_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Adress_id"], name: "index_institutions_on_Adress_id"
  end

end
