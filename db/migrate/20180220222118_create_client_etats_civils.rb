class CreateClientEtatsCivils < ActiveRecord::Migration[5.1]
  def change
    create_table :client_etats_civils do |t|
      t.references :Client, foreign_key: true
      t.references :EtatsCivil, foreign_key: true
      t.date :DateDebut
      t.date :DateFin

      t.timestamps
    end
  end
end
