class NotesController < ApplicationController
  before_action :set_note, only: [:edit, :update, :destroy, :show]

  def create
    @note = Note.new
    @message = Message.find(params[:message_id])

    resolution = ""
    my_fields = params[:fields] # Keep the original answer hash intact
    my_fields.each_value { |i| i.reverse! }

    @message.message.scan(/\{[\w,\s-]+\}|\w+|\W/) do |i|
      if (i =~ /\{[\w,\s-]+\}/)
        type = i.gsub(/[\{\}]/,'').downcase
        resolution += my_fields[type].pop
      else
        resolution += i
      end
    end

    @note.content = resolution
    if @note.save
      redirect_to @note, :notice => 'Your note has been created'
    else
      redirect_to @note, :notice => 'Error while creating note'
    end

  end

  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_note
      @note = Note.find(params[:id])
    end
end
