class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms, id: false, :primary_key => :room_number do |t|
      t.string :room_number
      t.string :building

      t.timestamps null: false
    end
    change_column :rooms, :room_number, :string

    create_table :readmissions do |t|
      t.belongs_to :room, index: true   
      t.date :check_in
      t.string :school_year
      t.datetime :timestamp
      t.string :semester
      t.binary :status
      t.integer :id_number
      t.integer :room_number

      t.timestamps null: false
    end
  end
end
