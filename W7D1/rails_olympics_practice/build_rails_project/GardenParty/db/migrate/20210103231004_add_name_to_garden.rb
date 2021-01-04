class AddNameToGarden < ActiveRecord::Migration[5.2]
  def change
    add_column :gardens, :name, :string, null: false
  end
end
