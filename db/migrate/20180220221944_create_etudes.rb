class CreateEtudes < ActiveRecord::Migration[5.1]
  def change
    create_table :etudes do |t|
      t.string :SecteurEtudes
      t.string :Niveau
      t.date :DateDebut
      t.date :DateComplition
      t.references :Client, foreign_key: true
      t.references :Institution, foreign_key: true

      t.timestamps
    end
  end
end
