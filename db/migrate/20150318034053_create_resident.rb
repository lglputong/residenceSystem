class CreateResident < ActiveRecord::Migration
  def change
    create_table :residents, id: false do |t|
      t.integer :id_number
      t.string :first_name
      t.string :last_name
      t.string :middle_initial
      t.boolean :year
      t.string :course
      t.string :email
      t.string :mobile   
      t.binary :dorm_scholar
    end
    execute "ALTER TABLE residents ADD PRIMARY KEY (id_number);"

    create_table :readmissions do |t|
      t.belongs_to :resident, index: true
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
