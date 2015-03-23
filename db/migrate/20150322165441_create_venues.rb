class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.string :description
      t.float :length
      t.float :width
      t.float :area
      t.integer :capacity

      t.timestamps null: false
    end
  end
end
