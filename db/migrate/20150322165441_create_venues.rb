class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.string :description
      t.string :dimensions
      t.integer :capacity

      t.timestamps null: false
    end
  end
end
