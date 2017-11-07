# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(email: 'example@example.com', password: 'password', password_confirmation: 'password')
puts "User created for example email: #{user.email} password: #{user.password}"

chat_room1 = ChatRoom.create(title: "Chat room with password", password: "password", user: user)
chat_room2 = ChatRoom.create(title: "Chat room without password", user: user)

puts "Chat room created #{chat_room1.title}"
puts "Chat room created #{chat_room2.title}"