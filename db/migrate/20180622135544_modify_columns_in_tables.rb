class ModifyColumnsInTables < ActiveRecord::Migration[5.2]
  def change
    remove_column :instruments_groups, :plan

    add_column :instruments_groups, :type, :integer
    add_column :instruments_groups, :orientation, :boolean
    add_column :instruments_groups, :prescriptive, :boolean
    add_column :instruments_groups, :validity_period, :integer

    add_column :instruments, :under_revision_since, :date
  end
end
