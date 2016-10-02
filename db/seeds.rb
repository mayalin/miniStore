puts "这个seed会自动建立1个admin账号, 1个user账号"

create_account = User.create([email: 'admin@gmail.com', password: '123456', password_confirmation: '123456', is_admin: 'true'])
puts "Admin account created."

create_account = User.create([email: 'user1@gmail.com', password: '123456', password_confirmation: '123456', is_admin: 'false'])
puts "User1 account created."
