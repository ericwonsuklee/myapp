# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user_seed = [ {   :name => "admin",
                  :email => "admin@travely.com",
                  :password => "admin1234"
              },
              { :name => "userone",
                :email => "userone@travely.com",
                :password => "userone1234"
              }
            ]
User.destroy_all
user_seed.each do |user_info|
  p = User.new
  p.name = user_info[:name]
  p.email = user_info[:email]
  p.password = user_info[:password]
  p.save
end
