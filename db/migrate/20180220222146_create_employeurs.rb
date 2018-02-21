class CreateEmployeurs < ActiveRecord::Migration[5.1]
  def change
    create_table :employeurs do |t|
      t.string :Nom
      t.references :Adress, foreign_key: true

      t.timestamps
    end
  end
end
