class CreateInstruments < ActiveRecord::Migration[5.2]
  def change
    create_table :instruments do |t|
      t.string :name, limit: 250
      t.string :abbreviation, limit: 10
      t.date :start_date
      t.date :last_rev_date
      t.string :description, limit: 500
      t.string :planning
      t.string :transboundary
      t.boolean :appeal_proc
      t.string :descr_appeal_proc
      t.references :instruments_group, foreign_key: true

      t.timestamps
    end

    add_index :instruments, :name, :unique => true
  end
end
