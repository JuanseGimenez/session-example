module SessionsHelper
	def log_in_chat(room)
		session[:chat_room] = room.id
	end

	def log_out_chat
    session.delete(:chat_room)
  end
end
