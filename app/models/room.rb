class Room < ActiveRecord::Base
	has_many :readmissions, dependent: :destroy
	has_many :residents, through: :readmissions

	accepts_nested_attributes_for :readmissions
end
