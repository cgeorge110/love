class WelcomeController < ApplicationController
  def home
  	r = rand(Message.count) + 1
  	@message = Message.find(r)

  	@note = Note.new
  end

end
