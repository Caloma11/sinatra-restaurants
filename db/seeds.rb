require 'faker'

puts 'Starting to seed'

10.times do 
	restaurant = Restaurant.new(
		name: Faker::JapaneseMedia::DragonBall.character,
		address: Faker::Address.street_address)
	restaurant.save
end

puts 'Seeding ended'