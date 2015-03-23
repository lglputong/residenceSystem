class ReservationMailer < ApplicationMailer
	default from: "lance.putong@obf.ateneo.edu"

	def confirmation_email(reservation)
		@reservation = reservation
		mail(to: @reservation.email, subject: 'Registration Confirmation')
	end
end
