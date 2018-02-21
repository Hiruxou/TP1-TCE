class CreateEnfants < ActiveRecord::Migration[5.1]
  def change
    create_table :enfants do |t|
      t.string :Nom
      t.string :Prenom
      t.date :DateNaissance

      t.timestamps
    end
  end
end
