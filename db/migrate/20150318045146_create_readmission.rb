class CreateReadmission < ActiveRecord::Migration
  def change
    create_table :residents, id: false, :primary_key => :id_number do |t|
      t.string :first_name
      t.string :last_name
      t.string :middle_initial
      t.boolean :year
      t.string :course
      t.string :email
      t.string :mobile   
      t.binary :dorm_scholar
    end

    create_table :rooms, id: false, :primary_key => :room_number do |t|
      t.string :building
    end

    create_table :readmissions do |t|
      t.belongs_to :resident, index: true
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

    add_index :readmissions, :id_number
    add_index :readmissions, :room_number
  end
end
