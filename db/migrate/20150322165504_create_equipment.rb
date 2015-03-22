class CreateEquipment < ActiveRecord::Migration
  def change
    create_table :equipment do |t|
      t.string :name_string
      t.string :description_string
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
