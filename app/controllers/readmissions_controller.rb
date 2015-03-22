class ReadmissionsController < ApplicationController
	def new
		@readmission = Readmission.new
		@resident = Resident.new
		@room = Room.new
	end
	
	def create
		@readmission = Readmission.new(params[:id])
		@resient = Resident.new(params[:id_number])

		@readmission.save
		@resident.save

		if @readmission.save

			render :success
		else
			render :new
		end
	end

	def success
		@readmission = Readmission.find(:id)
	end
end
