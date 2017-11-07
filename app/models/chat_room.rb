class ChatRoom < ApplicationRecord
  belongs_to :user
  has_secure_password :validations => false
  #You need make validations customs for password_confirmation, and password size
end
