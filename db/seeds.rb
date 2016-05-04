# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
  
 Page.all.each {|x| x.destroy}

   

  5.times do 
Page.create(
  :body => "Capstone Description",
  :first_name => Faker::Name.first_name, 
  :last_name => Faker::Name.last_name,
  :email => Faker::Internet.email,
  :phone_number => Faker::PhoneNumber.phone_number, 
  :short_bio => Faker::Lorem.paragraph,
  :linkedin_url => Faker::Internet.url,
  :github_url => Faker::Internet.url 
  )
end