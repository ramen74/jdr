# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.new({ :email => 'claude@test.com', :password => 'password', :password_confirmation => 'password'}).save
#note seed pukes on assigning role via the method above... Here we go...
u = User.first
u.role = 'admin'
u.save



