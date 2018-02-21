class CreateClientHasEmployeurs < ActiveRecord::Migration[5.1]
  def change
    create_table :client_has_employeurs do |t|
      t.references :Client, foreign_key: true
      t.references :Employeur, foreign_key: true
      t.date :DateDebut
      t.date :DateFin

      t.timestamps
    end
  end
end
