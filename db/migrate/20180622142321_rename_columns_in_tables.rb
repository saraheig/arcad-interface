class RenameColumnsInTables < ActiveRecord::Migration[5.2]
  def change
    rename_column :instruments_groups, :type, :kind

    change_column :instruments_groups, :name_ch, :string, limit: 250
    change_column :instruments_groups, :name_fr, :string, limit: 250
  end
end
