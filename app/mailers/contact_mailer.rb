class ContactMailer < ActionMailer::Base
  def website(message)
    @message = message
    mail(from: "andrewppace@gmail.com", to: "andrewppace@gmail.com", subject: "Message from Website")
  end
end
