class RemoveflowerTypeFromGardens < ActiveRecord::Migration[5.2]
  def change
    remove_column :gardens, :flower_type
  end
end
