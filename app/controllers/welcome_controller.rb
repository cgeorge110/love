class WelcomeController < ApplicationController
  def home
  	r = rand(Message.count) + 1
  	@message = Message.find(r)

  	@note = Note.new
  end

  def sent
  	
  end
<<<<<<< HEAD

  def map
  	@notes = Note.all
  	@hash = Gmaps4rails.build_markers(@notes) do |note, marker|
  		marker.lat note.latitude
 		marker.lng note.longitude
 		marker.infowindow "#{note.content}... lat: #{note.latitude} / lng: #{note.longitude} ... id: #{note.id}"
	end
  end
=======
>>>>>>> 5c722712d0c26fd7248b0c96e2834c3a075a1f17
end
