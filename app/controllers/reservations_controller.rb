class ReservationsController < ApplicationController

	def index
		@reservations = Reservation.all
	end

	def new
		@reservation = Reservation.new
	end
	
	def create
		@reservation = Reservation.new(reservation_params)

		if @reservation.save
			redirect_to reservations_path
		else
			render :new
		end
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
