class ContactMailer < ActionMailer::Base
  def website(message)
    @message = message
   mail(from: "info@pacedermatology", to: "info@pacedermatology.com", subject: "Message from Website")
  end
end
