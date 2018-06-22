class CreateCompetences < ActiveRecord::Migration[5.2]
  def change
    create_table :competences do |t|
      t.string :name, limit: 250

      t.timestamps
    end

    add_index :competences, :name, :unique => true
  end
end
