class CreateGardens < ActiveRecord::Migration[5.2]
  def change
    create_table :gardens do |t|

      t.string :name, null: false, unique: true
      t.integer :size, null: false
      t.integer :garden_owner_id, null: false
      t.timestamps
    end
  end
end
