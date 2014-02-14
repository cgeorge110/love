class FbShareController < ApplicationController
  def new
  	@note = Note.find(params[:note])
  end

  def auth
  	@note = Note.find(params[:note_id])
  	cookies["to"] = { :value => "#{params[:to]}", :expires => 1.minute.from_now }
  	cookies["note"] = { :value => @note.content, :expires => 1.minute.from_now }
  	cookies["from"] = { :value => "#{params[:from]}", :expires => 1.minute.from_now }

  	@client = client

  	redirect_to @client.authorization_uri(
  		:scope => [:publish_stream]
  		)
  end

  def callback
  	@client = client
  	@client.authorization_code = params[:code]

  	access_token = @client.access_token! :client_auth_body

  	me = FbGraph::User.me(access_token)

  	to = cookies["to"]
  	note = cookies["note"]
  	from = cookies["from"]

  	me.feed!(
  		:message => to + ", " + note + " With love, " + from,
  		:picture => 'http://www.slightlyaskewmedia.com/love/images/fb-image.gif',
  		:link => 'http://www.somelovenotes.com',
  		:name => 'someLoveNotes',
  		:description => 'insipiring love notes for the uninspired'

  		)

  	redirect_to sent_path
  end

  private

  def client
  	key = ENV['FB_KEY']
  	secret = ENV['FB_SECRET_KEY']
  	fb_auth = FbGraph::Auth.new(key, secret)
  	client = fb_auth.client
  	client.redirect_uri = "http://#{request.host_with_port}/fb_share/callback"

  	client
  end
end
