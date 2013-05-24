class ContactusController < ApplicationController
  def new
    @contacter = Contacter.new
  end
  
  def create
    @contacter = Contacter.new(params[:contacter])
    if @contacter.valid?
      @contacter.send_message
      redirect_to root_path, notice: "Thank you for contacting us.  Your message was successfully sent, and we will be in touch with you as soon as possible."
    else
      render "new"
    end
  end
end
