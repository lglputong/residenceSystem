class CreateEquipmentReservations < ActiveRecord::Migration
  def change
    create_table :equipment_reservations do |t|
      t.string :users
      t.date :reservation_date
      t.time :start_time
      t.time :end_time
      t.string :status
      t.string :purpose
      t.datetime :timestamp
      t.text :comment
      t.integer :id_number
      t.string :applicant_name
      t.string :requesting_entity
      t.string :mobile_number
      t.string :email
      t.string :yr_course
      t.string :department

      t.timestamps null: false
    end
  end
end
