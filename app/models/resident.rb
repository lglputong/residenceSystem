class Resident < ActiveRecord::Base
	self.primary_key = 'id_number'
	has_many :readmissions, dependent: :destroy
	has_many :rooms, through: :readmissions

	accepts_nested_attributes_for :readmissions
end