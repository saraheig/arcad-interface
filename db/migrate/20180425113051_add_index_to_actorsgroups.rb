class AddIndexToActorsgroups < ActiveRecord::Migration[5.2]
  def change
    add_index :actors_groups, :name, :unique => true
  end
end
