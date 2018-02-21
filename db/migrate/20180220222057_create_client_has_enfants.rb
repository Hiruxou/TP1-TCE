class CreateClientHasEnfants < ActiveRecord::Migration[5.1]
  def change
    create_table :client_has_enfants do |t|
      t.references :Enfant, foreign_key: true
      t.references :Client, foreign_key: true
      t.boolean :Lien

      t.timestamps
    end
  end
end
