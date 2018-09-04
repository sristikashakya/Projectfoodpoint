# Preview all emails at http://localhost:3000/rails/mailers/example_mailer
class ExampleMailerPreview < ActionMailer::Preview
	def sample_mail_preview
    	@mail = ExampleMailer.sample_email(Restaurant.last)
  end
end
