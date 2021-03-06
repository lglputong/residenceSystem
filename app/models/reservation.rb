class Reservation < ActiveRecord::Base
	validates :school_year, presence: true, format: { with: /[2][0][0-9][0-9]-[2][0][0-9][0-9]/, message: "use right format: 20xx-20xx" }
	validates :last_name, presence: true
	validates :first_name, presence: true
	validates :middle_initial, presence: true, length: { maximum: 1 }, format: { with: /\A[a-zA-Z]+\z/ }
	validates :email, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: "not valid email"}
	validates :mobile_number, presence: true, numericality: { only_integer: true }, length: {is:11}
	validates :id_number, presence: true, length: {is: 6}, numericality: { only_integer: true }, uniqueness: true
	validates :year_level, presence: true, length: {is: 1}
	validates :course, presence: true
	validates :building, presence: true
	validates :room_number, presence: true, length: {is: 3}, numericality: { only_integer: true }

	def self.as_csv
  		CSV.generate do |csv|
		    csv << column_names
		    all.each do |item|
		      csv << item.attributes.values_at(*column_names)
    		end
  		end
	end
end
