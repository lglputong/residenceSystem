class ReservationMailer < ApplicationMailer
	default from: "lance435@gmail.com"

	def confirmation_email(reservation)
		@reservation = reservation
		mail(to: @reservation.email, subject: 'Registration Confirmation')
	end
end
