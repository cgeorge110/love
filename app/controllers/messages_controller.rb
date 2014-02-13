class MessagesController < ApplicationController
  before_action :set_message, only: [:edit, :update, :destroy, :show]
  before_filter :require_login, except: [:show]

  def index
    @messages = Message.all
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)

    
      if @message.save
        redirect_to @message, notice: 'Message was successfully created.'
      else
        render action: 'new'
      end

  end

  def edit
  end

  def update
      if @message.update_attributes(message_params)
        redirect_to @message, notice: 'Message was successfully updated.'
      else
        render action: 'edit'
      end

  end

  def destroy
    @message.destroy
      redirect_to :action => 'list'
  end

  

  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_message
      @message = Message.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def message_params
      params.require(:message).permit(:message)
    end
end
