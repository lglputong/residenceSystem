class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :school_year
      t.string :last_name
      t.string :first_name
      t.string :middle_initial
      t.string :mobile_number
      t.string :address
      t.string :id_number
      t.string :year_level
      t.string :course
      t.string :dorm_scholar
      t.string :building
      t.string :room_number
      t.date :check_in
      t.date :submission

      t.timestamps null: false
    end
  end
end
