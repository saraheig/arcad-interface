class CreateDomains < ActiveRecord::Migration[5.2]
  def change
    create_table :domains do |t|
      t.string :name, limit: 50

      t.timestamps
    end

    add_index :domains, :name, :unique => true
  end
end
