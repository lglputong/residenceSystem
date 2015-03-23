class ReservationsController < ApplicationController

	def index
		@reservations = Reservation.all
	end

	def new
		@reservation = Reservation.new
	end
	
	def create
		@reservation = Reservation.new(reservation_params)
		@reservation.status = "Waitlisted"

		if @reservation.save
			ReservationMailer.confirmation_email(@reservation).deliver_now
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

	def edit
		@reservation = Reservation.find(params[:id])
	end

	def update
		@reservation = Reservation.find(params[:id])
		@reservation.school_year = params[:reservation][:school_year]
		@reservation.last_name = params[:reservation][:last_name]
		@reservation.first_name = params[:reservation][:first_name]
		@reservation.middle_initial = params[:reservation][:middle_initial]
		@reservation.mobile_number = params[:reservation][:mobile_number]
		@reservation.email = params[:reservation][:email]
		@reservation.id_number = params[:reservation][:id_number]
		@reservation.year_level = params[:reservation][:year_level]
		@reservation.course = params[:reservation][:course]
		@reservation.dorm_scholar = params[:reservation][:dorm_scholar]
		@reservation.building = params[:reservation][:building] 
		@reservation.room_number = params[:reservation][:room_number]
		@reservation.check_in = params[:reservation][:check_in]
	 	@reservation.status = params[:reservation][:status]

		if @reservation.save!
			render :success
		else
			render :edit
		end
	end
end
