class CreateActors < ActiveRecord::Migration[5.2]
  def change
    create_table :actors do |t|
      t.string :name, limit: 250
      t.string :abbreviation, limit: 20
      t.string :country, limit: 20
      t.string :phone, limit: 20
      t.string :link
      t.references :actors_group, foreign_key: true

      t.timestamps
    end

    add_index :actors, :name, :unique => true
  end
end
