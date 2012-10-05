class HomeController < ApplicationController
  def index
    @messages = Message.order("created_at DESC")
  end
end
