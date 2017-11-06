class StaticPagesController < ApplicationController
  before_action :authenticate_user!
  def home
  	redirect_to chat_rooms_path if current_user
  end
end
