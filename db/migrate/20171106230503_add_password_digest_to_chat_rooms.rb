class AddPasswordDigestToChatRooms < ActiveRecord::Migration[5.1]
  def change
    add_column :chat_rooms, :password_digest, :string
  end
end
