class CreateReadmission < ActiveRecord::Migration
  def change
    create_table :readmissions do |t|
      t.integer :readmission_id
      t.date :check_in
      t.datetime :timestamp
      t.string :school_year
      t.string :semester
      t.binary :status
    end
  end
end
