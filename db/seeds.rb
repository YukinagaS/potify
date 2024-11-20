# destroy the db
require 'faker'

puts "removing the db..."
Toilet.destroy_all
User.destroy_all
Booking.destroy_all


puts "making users..."

celso = User.create!(email: "turd@celso.com", name: "Celso", password: "123456")
doug = User.create!(email: "turd@doug.com", name: "Doug", password: "123456")
yann = User.create!(email: "turd@yann.com", name: "Yann", password: "123456")
stuart = User.create!(email: "turd@stuart.com", name: "Stuart", password: "123456")
alisa = User.create!(email: "turd@alisa.com", name: "Alisa", password: "123456")
denis = User.create!(email: "turd@denis.com", name: "Denis", password: "123456")

puts "there are #{User.count} users"


puts "building toilets..."

celso_t = Toilet.create!(name: "The Duchess", price: 50, address: "52 Bowl Dr.", description: "status: unprocessable_entity", user: celso)
file = File.open("app/assets/images/horse_toilet.jpg")
celso_t.photo.attach(io: file, filename: "toilet.jpg", content_type: "image/jpg")
celso_t.save

doug_t = Toilet.create(name: "Grandma's Party", price: 100, address: "who cares", description: "Ideal for couples", user: doug)
file = File.open("app/assets/images/couple_toilet.jpg")
doug_t.photo.attach(io: file, filename: "couple_toilet.jpg", content_type: "image/jpg")
doug_t.save

yann_t = Toilet.create(name: "The Alisa", price: 1, address: "an alleyway", description: "don't use this one", user: yann)
file = File.open("app/assets/images/golden_toilet.webp")
yann_t.photo.attach(io: file, filename: "golden_toilet.webp", content_type: "image/webp")
yann_t.save


stuart_t = Toilet.create!(name: "Hello Kitty", price: 50, address: "52 Bowl Dr.", description: "strong params", user: celso)
file = File.open("app/assets/images/scary.jpg")
stuart_t.photo.attach(io: file, filename: "scary.jpg", content_type: "image/jpg")
stuart_t.save


alisa_t = Toilet.create(name: "Cool Biz", price: 100, address: "who cares", description: "for relaxing times", user: doug)
file = File.open("app/assets/images/chains.jpg")
alisa_t.photo.attach(io: file, filename: "chains.jpg", content_type: "image/jpg")
alisa_t.save


denis_t = Toilet.create(name: "Captain AND Tenille", price: 1, address: "hell", description: "good god, you're going to have fun", user: yann)
file = File.open("app/assets/images/BAR.jpg")
denis_t.photo.attach(io: file, filename: "BAR.jpg", content_type: "image/jpg")
denis_t.save

12.times do |index|
  toilet = Toilet.create!(name: "#{Faker::FunnyName.name} #{index}", price: (500..2000).to_a.sample, address: "#{Faker::Address.street_address}, #{Faker::Address.city} #{index}", description: "#{Faker::Quote.jack_handey} #{index}", user: [yann, stuart, denis, alisa, doug, celso].sample)
  file = File.open(["app/assets/images/BAR.jpg", "app/assets/images/01.jpg", "app/assets/images/02.webp", "app/assets/images/03.jpg", "app/assets/images/04.jpeg", "app/assets/images/05.webp", "app/assets/images/06.jpg", "app/assets/images/07.jpg", "app/assets/images/08.jpg"].sample)
  toilet.photo.attach(io: file, filename: "BAR.jpg", content_type: "image/jpg")
  toilet.save
end


puts "you now have #{Toilet.count} toilets"


puts "how about some bookings..."

date1 = Date.today
date2 = Date.today-2
date3 = Date.today-3

Booking.create!(user: celso, toilet: celso_t, start_time: date1, end_time: date2)
Booking.create!(user: doug, toilet: doug_t, start_time: date2, end_time: date3)
Booking.create!(user: yann, toilet: yann_t, start_time: date3, end_time: date1)
Booking.create!(user: stuart, toilet: stuart_t, start_time: date1, end_time: date2)
Booking.create!(user: alisa, toilet: alisa_t, start_time: date2, end_time: date3)
Booking.create!(user: denis, toilet: denis_t, start_time: date3, end_time: date1)
Booking.create!(user: stuart, toilet: stuart_t, start_time: date1, end_time: date2)
Booking.create!(user: alisa, toilet: alisa_t, start_time: date2, end_time: date3)
Booking.create!(user: denis, toilet: denis_t, start_time: date3, end_time: date1)

puts "there are now #{Booking.count} bookings as well"
