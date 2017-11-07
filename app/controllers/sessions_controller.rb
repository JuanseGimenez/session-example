class SessionsController < ApplicationController
  def new
  	@chat_room = params[:chat_room]
    room = ChatRoom.find(params[:chat_room])
    if room && room.password_digest.nil?
      log_in_chat room
      redirect_to chat_room_path(id: params[:chat_room]), notice: 'Success sign in chat room'
    end
  end

  def create
  	chat_room = ChatRoom.find(params[:chat_room_id])
  	if chat_room && chat_room.authenticate(params[:session][:password])
  		log_in_chat chat_room
      redirect_to chat_room_path(id: params[:chat_room_id]), notice: 'Success sign in chat room'
  	else
      render :action => "new", :chat_room => @chat_room, notice: 'Incorret password'
  	end

  end

  def destroy
  	log_out_chat
    redirect_to root_url
  end
end
