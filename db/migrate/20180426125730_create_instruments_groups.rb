class CreateInstrumentsGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :instruments_groups do |t|
      t.string :name_ch, limit: 50
      t.string :name_fr, limit: 50
      t.string :abbrev_ch, limit: 10
      t.string :abbrev_fr, limit: 10
      t.string :description, limit: 500
      t.string :country, limit: 20
      t.boolean :law
      t.boolean :plan
      t.boolean :appeal_proc
      t.string :descr_appeal_proc

      t.timestamps
    end

    add_index :instruments_groups, [:name_ch, :name_fr], unique: true
  end
end
