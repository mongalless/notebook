# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
include Faker

coutries = Array.new(10) { Faker::Address.unique.country }
towns = Array.new(20) { Faker::Address.unique.city }

coutries.each do |country|
  Country.create( 
    country_name: country
  )
end

towns.each do |town|
	temp_country = coutries.sample

  User.create( 
    name_surname: Faker::Name.unique.name,
    photo_link: Faker::File.unique.file_name(Faker::Internet.url('notebook.storage.com'), Faker::Number.number(6), 'jpg'), 
    phone_number: Faker::PhoneNumber.unique.cell_phone,
    country_name: temp_country,
    town_name: town,
    birthday_date: Faker::Time.unique.backward(14, :evening),
    email: Faker::Internet.unique.free_email,
    facebook_link: Faker::Internet.unique.url('facebook.com'),
    other_social_links: Faker::Internet.unique.url
  )

	Town.create( 
		town_name: town,
   	country_name: temp_country
  )
end



