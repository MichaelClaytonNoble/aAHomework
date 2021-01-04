class RenameNameInFlowers < ActiveRecord::Migration[5.2]
  def change
    rename_column :gardens, :name, :flower_type
  end
end
