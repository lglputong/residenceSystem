class AdminsController < ApplicationController 	
	def index
		@reservations = Reservation.all
	end

	def destroy
	        @reservation = Reservation.find(params[:id])
		@reservation.destroy
		redirect_to reservations_path
	end

	def reservation_params
		params.require(:reservation).permit!
	end

end
