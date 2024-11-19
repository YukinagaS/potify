# destroy the db
puts "removing the db..."
Toilet.destroy_all
User.destroy_all
Booking.destroy_all


puts "make a user"

celso = User.create!(email: "turd@celso.com", name: "Celso", password: "123456")
doug = User.create!(email: "turd@doug.com", name: "Doug", password: "123456")
yann = User.create!(email: "turd@yann.com", name: "Yann", password: "123456")

puts "there is #{User.count} users"


puts "building toilets"

celso_t = Toilet.create!(name: "the duchess", price: 50, address: "52 Bowl Dr.", description: "status: unprocessable_entity", user: celso)
file = File.open("app/assets/images/horse_toilet.jpg")
celso_t.photo.attach(io: file, filename: "toilet.jpg", content_type: "image/jpg")
celso_t.save

doug_t = Toilet.create(name: "grandma's party", price: 100, address: "who cares", description: "Ideal for couples", user: doug)
file = File.open("app/assets/images/couple_toilet.jpg")
doug_t.photo.attach(io: file, filename: "couple_toilet.jpg", content_type: "image/jpg")
doug_t.save

yann_t = Toilet.create(name: "alisa", price: 1, address: "an alleyway", description: "don't use this one", user: yann)
file = File.open("app/assets/images/golden_toilet.webp")
yann_t.photo.attach(io: file, filename: "golden_toilet.webp", content_type: "image/webp")
yann_t.save
puts "you now have #{Toilet.count} toilets"


puts "here's some bookings..."

date1 = Date.today
date2 = Date.today-2
date3 = Date.today-3

Booking.create!(user: celso, toilet: celso_t, start_time: date1, end_time: date2)
Booking.create!(user: doug, toilet: doug_t, start_time: date2, end_time: date3)
Booking.create!(user: yann, toilet: yann_t, start_time: date3, end_time: date1)

puts "there are now #{Booking.count} bookings as well"
