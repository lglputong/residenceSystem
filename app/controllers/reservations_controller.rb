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
			render :success
		else
			render :new
		end
	end

	def success
		@reservation = Reservation.find(:id)
	end

	def destroy
		@reservation = Reservation.find(params[:id])
		@reservation.destroy
		redirect_to reservations_path
	end

	def reservation_params
		params.require(:reservation).permit!
	end

	def index
	  @reservations = Reservation.order(:created_at)
	  
	  respond_to do |format|
	    format.html
	    format.csv { send_data @reservations.as_csv }
	  end
	end
end
