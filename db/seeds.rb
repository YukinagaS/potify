# destroy the db
require 'faker'

puts "removing the db..."
Toilet.destroy_all
User.destroy_all
Booking.destroy_all


puts "making users..."

celso = User.create!(email: "turd@celso.com", name: "Celso", password: "123456")
photo = File.open("app/assets/images/celso1.png")
celso.profile_picture.attach(io: photo, filename: "celso1.png", content_type: "image/png")
celso.save

doug = User.create!(email: "turd@doug.com", name: "Doug", password: "123456")
photo = File.open("app/assets/images/doug.png")
doug.profile_picture.attach(io: photo, filename: "doug.png", content_type: "image/png")
doug.save

yann = User.create!(email: "turd@yann.com", name: "Yann", password: "123456")
photo = File.open("app/assets/images/yann.png")
yann.profile_picture.attach(io: photo, filename: "yann.png", content_type: "image/png")
yann.save

stuart = User.create!(email: "turd@stuart.com", name: "Stuart", password: "123456")

alisa = User.create!(email: "turd@alisa.com", name: "Alisa", password: "123456")
photo = File.open("app/assets/images/alisa.png")
alisa.profile_picture.attach(io: photo, filename: "alisa.png", content_type: "image/png")
alisa.save

denis = User.create!(email: "turd@denis.com", name: "Denis", password: "123456")
photo = File.open("app/assets/images/denis.png")
denis.profile_picture.attach(io: photo, filename: "denis.png", content_type: "image/png")
denis.save

will = User.create!(email: "turd@dwill.com", name: "Will", password: "123456")

puts "there are #{User.count} users"


puts "building toilets..."

celso_t = Toilet.create!(name: "The Duchess", price: 50, address: "52 Bowl Dr.", short_description: "The Duchess is a horse-shaped toilet with glossy porcelain and antique gold accents, blending art, luxury, and whimsy for a regal bathroom statement.", description: "The Duchess is a horse-shaped toilet crafted from glossy porcelain with antique gold accents. The horse’s head forms the tank, while the flowing mane and tail add elegance and stability.

The integrated seat mirrors the horse’s back for comfort, and a playful mirror at the bottom offers a unique twist.

Combining art, luxury, and function, The Duchess is a regal and whimsical statement piece for any bathroom.", user: celso)
file = File.open("app/assets/images/horse_toilet.jpg")
celso_t.photos.attach(io: file, filename: "toilet.jpg", content_type: "image/jpg")
celso_t.save
file = File.open("app/assets/images/toilet_paper.jpg")
celso_t.photos.attach(io: file, filename: "toilet_paper.jpg", content_type: "image/jpg")
celso_t.save
file = File.open("app/assets/images/mirror.png")
celso_t.photos.attach(io: file, filename: "mirror.png", content_type: "image/png")
celso_t.save
file = File.open("app/assets/images/horse.png")
celso_t.photos.attach(io: file, filename: "horse.png", content_type: "image/png")
celso_t.save

doug_t = Toilet.create(name: "Grandma's Party", price: 100, address: "who cares", short_description: "Ideal for couples" , description: "Ideal for couples", user: doug)
file = File.open("app/assets/images/couple_toilet.jpg")
doug_t.photos.attach(io: file, filename: "couple_toilet.jpg", content_type: "image/jpg")
doug_t.save

yann_t = Toilet.create(name: "The Golden Throne", price: 1, address: "an alleyway", short_description: "Experience luxury with our Golden & Marble Toilet, blending timeless marble elegance with rich gold accents for a sophisticated bathroom centerpiece." , description: "This luxurious Golden and Marble Elegant Toilet combines the timeless beauty of marble with the opulence of gold accents. The smooth marble surface and rich gold fixtures create a stunning contrast, adding sophistication and grandeur to any bathroom. Perfect for upscale spaces, it offers both elegance and modern functionality for an unforgettable bathroom experience.", user: yann)
file = File.open("app/assets/images/golden_toilet.webp")
yann_t.photos.attach(io: file, filename: "golden_toilet.webp", content_type: "image/webp")
yann_t.save
file = File.open("app/assets/images/gold-plated-toilet.webp")
yann_t.photos.attach(io: file, filename: "golden_toilet.webp", content_type: "image/webp")
yann_t.save
file = File.open("app/assets/images/golden1.png")
yann_t.photos.attach(io: file, filename: "golden_toilet.webp", content_type: "image/png")
yann_t.save
file = File.open("app/assets/images/golden2.png")
yann_t.photos.attach(io: file, filename: "golden2.png", content_type: "image/png")
yann_t.save

will_t = Toilet.create(name: "The Cadillac", price: 800, address: "an alleyway", short_description: "The Cadillac Toilet combines sleek style, plush seating, and efficient performance, offering automotive elegance and first-class comfort in your bathroom." , description: "Experience the perfect blend of style and comfort with the Cadillac Toilet. Inspired by the sleek lines and elegance of a Cadillac, this toilet offers plush seating and smooth, efficient performance. A true statement piece for those who appreciate luxury, it brings automotive flair and first-class comfort to your bathroom.", user: will)
file = File.open("app/assets/images/cadillac2.png")
will_t.photos.attach(io: file, filename: "golden_toilet.png", content_type: "image/webp")
will_t.save
file = File.open("app/assets/images/cadillac3.png")
will_t.photos.attach(io: file, filename: "golden_toilet.webp", content_type: "image/webp")
will_t.save
file = File.open("app/assets/images/cadillac1.png")
will_t.photos.attach(io: file, filename: "golden_toilet.webp", content_type: "image/png")
will_t.save


stuart_t = Toilet.create!(name: "Hello Kitty", price: 50, address: "52 Bowl Dr.", short_description: "strong params", description: "strong params", user: celso)
file = File.open("app/assets/images/scary.jpg")
stuart_t.photos.attach(io: file, filename: "scary.jpg", content_type: "image/jpg")
stuart_t.save


alisa_t = Toilet.create(name: "Cool Biz", price: 100, address: "who cares", short_description: "for relaxing times", description: "for relaxing times", user: doug)
file = File.open("app/assets/images/chains.jpg")
alisa_t.photos.attach(io: file, filename: "chains.jpg", content_type: "image/jpg")
alisa_t.save


denis_t = Toilet.create(name: "Captain AND Tenille", price: 1, address: "hell", short_description: "good god, you're going to have fun", description: "good god, you're going to have fun", user: yann)
file = File.open("app/assets/images/BAR.jpg")
denis_t.photos.attach(io: file, filename: "BAR.jpg", content_type: "image/jpg")
denis_t.save

12.times do |index|
  toilet = Toilet.create!(name: "#{Faker::FunnyName.name} #{index}", price: (500..2000).to_a.sample, address: "#{Faker::Address.street_address}, #{Faker::Address.city} #{index}", short_description: "#{Faker::Quote.most_interesting_man_in_the_world} #{index}", description: "#{Faker::Quote.most_interesting_man_in_the_world} #{index}", user: [yann, stuart, denis, alisa, doug, celso].sample)
  file = File.open(["app/assets/images/BAR.jpg", "app/assets/images/01.jpg", "app/assets/images/02.webp", "app/assets/images/03.jpg", "app/assets/images/04.jpeg", "app/assets/images/05.webp", "app/assets/images/06.jpg", "app/assets/images/07.jpg", "app/assets/images/08.jpg"].sample)
  toilet.photos.attach(io: file, filename: "BAR.jpg", content_type: "image/jpg")
  toilet.save
end


puts "you now have #{Toilet.count} toilets"


puts "how about some bookings..."

date1 = Date.today
date2 = Date.today-2
date3 = Date.today-3

Booking.create!(user: celso, toilet: celso_t, start_time: date1, end_time: date2, status: "pending")
Booking.create!(user: doug, toilet: doug_t, start_time: date2, end_time: date3, status: "pending")
Booking.create!(user: yann, toilet: yann_t, start_time: date3, end_time: date1, status: "pending")
Booking.create!(user: stuart, toilet: stuart_t, start_time: date1, end_time: date2, status: "pending")
Booking.create!(user: alisa, toilet: alisa_t, start_time: date2, end_time: date3, status: "pending")
Booking.create!(user: denis, toilet: denis_t, start_time: date3, end_time: date1, status: "pending")
Booking.create!(user: stuart, toilet: stuart_t, start_time: date1, end_time: date2, status: "pending")
Booking.create!(user: alisa, toilet: alisa_t, start_time: date2, end_time: date3, status: "pending")
Booking.create!(user: denis, toilet: denis_t, start_time: date3, end_time: date1, status: "pending")

puts "there are now #{Booking.count} bookings as well"
