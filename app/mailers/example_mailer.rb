class ExampleMailer < ApplicationMailer
	default from: "sristikashakya123@gmail.com"
	def sample_email(restaurant)
	    @restaurant = restaurant
	    mail(to: @restaurant.email, subject: 'Sample Email')
	end
end
