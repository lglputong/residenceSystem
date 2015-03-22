class Readmission < ActiveRecord::Base
	belongs_to :resident
	belongs_to :room
end