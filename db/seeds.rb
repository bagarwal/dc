# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create(username: 'binesh',
    email: 'admin@gmail.com',
    password: 'agarwal',
    password_confirmation: 'agarwal')

user2 = User.create(username: 'Nicole',
        email: 'client@gmail.com',
        password: 'agarwal',
        password_confirmation: 'agarwal')

1.upto(5) do |i|
	Product.create(name: "monitor #{i}",
								 price: 600 * i,
								 user: user1)
end
1.upto(5) do |i|
	Product.create(name: "keyboard #{i}",
								 price: 200 * i,
								 user: user2)
end
