class CreateResident < ActiveRecord::Migration
  def change
    create_table :residents, id: false, :primary_key => :id_number do |t|
      t.integer :id_number
      t.string :name
      t.boolean :year
      t.string :course
      t.string :email
      t.integer :mobile
      t.binary :dorm_scholar
    end
    change_column :residents, :id_number, :integer
  end
end
