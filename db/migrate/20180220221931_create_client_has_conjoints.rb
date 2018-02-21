class CreateClientHasConjoints < ActiveRecord::Migration[5.1]
  def change
    create_table :client_has_conjoints do |t|
      t.references :Client, foreign_key: true
      t.references :Client_Has_Conjoint, foreign_key: true
      t.date :DateDebut
      t.date :DateFin

      t.timestamps
    end
  end
end
