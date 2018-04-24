class CreateActorsGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :actors_groups do |t|
      t.string :name, limit: 50
      t.string :mission, limit: 500
      t.boolean :category
      t.boolean :france
      t.boolean :swiss
      t.integer :nuts
      t.boolean :administration
      t.boolean :executive
      t.boolean :legislative

      t.timestamps
    end
  end
end
