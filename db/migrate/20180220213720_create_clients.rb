class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :Prenom
      t.string :Nom
      t.date :DateNaissance
      t.string :nas
      t.references :Adress, foreign_key: true
      t.integer :NombresEnfants
      t.integer :CompteTaxesProprietaire

      t.timestamps
    end
  end
end
