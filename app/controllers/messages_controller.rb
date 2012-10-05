class MessagesController < ApplicationController
  before_filter :authenticate_user!

  def new
    @message = Message.new
  end

  def create
    @message = current_user.messages.build(params[:message])

    if @message.save
      redirect_to root_path
    else
      flash[:error] = "Couldn't save your message!"
      render :new
    end
  end
end
