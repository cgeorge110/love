class TweetsController < ApplicationController
  def new
  	@tweet = Tweet.new
  	@note = Note.find(params[:note])
  end

  def create
  	@tweet = Tweet.new(tweet_params)
  	
  	if @tweet.save
      #post message to twitter
      #TO-DO::make sure the message is less than 140 characters before sending.
      $client.update("@#{@tweet.to}: #{@tweet.note.content} With love, @#{@tweet.from} #lovenotes")
      redirect_to '/sent', :notice => 'Your tweet has been sent'
    else
      redirect_to @note, :notice => 'Error while creating tweet'
    end 
  end

  private

    def tweet_params
    	params.require(:tweet).permit(:note_id, :to, :from)
    end
end
