class EmailsController < ApplicationController
  def new
  	@email = Email.new
  	@note = Note.find(params[:note])
  end

  def create
  	@email = Email.new(email_params)
  	
  	if @email.save
      # email note
      LoveMail.love_note(@email).deliver
      redirect_to '/sent', :notice => 'Your email has been sent'
    else
      redirect_to @note, :notice => 'Error while creating email'
    end 
  end

  private

    def email_params
    	params.require(:email).permit(:note_id, :to, :getter_email, :from, :sender_email)
    end
end