puts "这个seed会自动建立一个admin账号"

create_account = User.create([email: 'admin@gmail.com', password: '123456', password_confirmation: '123456', is_admin: 'true'])
puts "Admin account created."
