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

celso_t = Toilet.create!(name: "The Duchess", price: 50, address: "52 Bowl Dr.", short_description: "Change your life with a ride on the Duchess.", description: "The Duchess is a horse-shaped toilet crafted from glossy porcelain with antique gold accents. The horse’s head forms the tank, while the flowing mane and tail add elegance and stability.", user: celso)
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

yann_t = Toilet.create(name: "The Golden Throne", price: 1, address: "an alleyway", short_description: "The Toilet formerly known as The Alisa." , description: "This luxurious Golden and Marble Elegant Toilet combines the timeless beauty of marble with the opulence of gold accents. The smooth marble surface and rich gold fixtures create a stunning contrast, adding sophistication and grandeur to any bathroom. Perfect for upscale spaces, it offers both elegance and modern functionality for an unforgettable bathroom experience.", user: yann)
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

will_t = Toilet.create(name: "The Cadillac", price: 800, address: "an alleyway", short_description: "Drop off the kids in the Caddy!" , description: "Experience the perfect blend of style and comfort with the Cadillac Toilet. Inspired by the sleek lines and elegance of a Cadillac, this toilet offers plush seating and smooth, efficient performance. A true statement piece for those who appreciate luxury, it brings automotive flair and first-class comfort to your bathroom.", user: will)
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
file = File.open("app/assets/images/10.png")
stuart_t.photos.attach(io: file, filename: "scary.jpg", content_type: "image/jpg")
stuart_t.save

alisa_t = Toilet.create(name: "Cool Biz", price: 100, address: "who cares", short_description: "for relaxing times", description: "for relaxing times", user: doug)
file = File.open("app/assets/images/chains.jpg")
alisa_t.photos.attach(io: file, filename: "chains.jpg", content_type: "image/jpg")
alisa_t.save

denis_t = Toilet.create(name: "Captain AND Tenille", price: 1, address: "hell", short_description: "good god, you're going to have fun", description: "good god, you're going to have fun", user: yann)
file = File.open("app/assets/images/scary.jpg")
denis_t.photos.attach(io: file, filename: "scary.jpg", content_type: "image/jpg")
denis_t.save

toilet = Toilet.create!(name: "Turdmuncher 10,000", price: (500..2000).to_a.sample, address: "#{Faker::Address.street_address}, #{Faker::Address.city}", short_description: "We've munched 9,999. You're 10,000!", description: "#{Faker::Quote.most_interesting_man_in_the_world}", user: [yann, stuart, denis, alisa, doug, celso].sample)
file = File.open("app/assets/images/BAR.png")
toilet.photos.attach(io: file, filename: "BAR.png", content_type: "image/jpg")
toilet.save

toilet = Toilet.create!(name: "Commode O' Dragon", price: (500..2000).to_a.sample, address: "#{Faker::Address.street_address}, #{Faker::Address.city}", short_description: "Viciously satisfying.", description: "#{Faker::Quote.most_interesting_man_in_the_world}", user: [yann, stuart, denis, alisa, doug, celso].sample)
file = File.open("app/assets/images/01.png")
toilet.photos.attach(io: file, filename: "BAR.png", content_type: "image/jpg")
toilet.save

toilet = Toilet.create!(name: "Big Ben", price: (500..2000).to_a.sample, address: "#{Faker::Address.street_address}, #{Faker::Address.city}", short_description: "大便と呼んでね！＾＾", description: "#{Faker::Quote.most_interesting_man_in_the_world}", user: [yann, stuart, denis, alisa, doug, celso].sample)
file = File.open("app/assets/images/02.png")
toilet.photos.attach(io: file, filename: "BAR.png", content_type: "image/jpg")
toilet.save

toilet = Toilet.create!(name: "Your-inal Destiny", price: (500..2000).to_a.sample, address: "#{Faker::Address.street_address}, #{Faker::Address.city}", short_description: "A match made in heaven.", description: "#{Faker::Quote.most_interesting_man_in_the_world}", user: [yann, stuart, denis, alisa, doug, celso].sample)
file = File.open("app/assets/images/03.png")
toilet.photos.attach(io: file, filename: "BAR.png", content_type: "image/jpg")
toilet.save

toilet = Toilet.create!(name: "Molly Ringwald's Chamberpot", price: (500..2000).to_a.sample, address: "#{Faker::Address.street_address}, #{Faker::Address.city}", short_description: "80's nostalgia for your butthole.", description: "#{Faker::Quote.most_interesting_man_in_the_world}", user: [yann, stuart, denis, alisa, doug, celso].sample)
file = File.open("app/assets/images/04.jpeg")
toilet.photos.attach(io: file, filename: "BAR.png", content_type: "image/jpg")
toilet.save

toilet = Toilet.create!(name: "OH SHIT!", price: (500..2000).to_a.sample, address: "#{Faker::Address.street_address}, #{Faker::Address.city}", short_description: "I GOTTA POOP RIGHT NOW", description: "#{Faker::Quote.most_interesting_man_in_the_world}", user: [yann, stuart, denis, alisa, doug, celso].sample)
file = File.open("app/assets/images/05.webp")
toilet.photos.attach(io: file, filename: "BAR.png", content_type: "image/jpg")
toilet.save

toilet = Toilet.create!(name: "#Poopy Paw Pals", price: (500..2000).to_a.sample, address: "#{Faker::Address.street_address}, #{Faker::Address.city}", short_description: "A dog run for when you have the runs.", description: "#{Faker::Quote.most_interesting_man_in_the_world}", user: [yann, stuart, denis, alisa, doug, celso].sample)
file = File.open("app/assets/images/06.png")
toilet.photos.attach(io: file, filename: "BAR.png", content_type: "image/jpg")
toilet.save

toilet = Toilet.create!(name: "Kuki Dumps", price: (500..2000).to_a.sample, address: "#{Faker::Address.street_address}, #{Faker::Address.city}", short_description: "Ride on the wild side.", description: "#{Faker::Quote.most_interesting_man_in_the_world}", user: [yann, stuart, denis, alisa, doug, celso].sample)
file = File.open("app/assets/images/07.jpg")
toilet.photos.attach(io: file, filename: "BAR.png", content_type: "image/jpg")
toilet.save

toilet = Toilet.create!(name: "Gassy Friends", price: (500..2000).to_a.sample, address: "#{Faker::Address.street_address}, #{Faker::Address.city}", short_description: "Group discounts available!", description: "#{Faker::Quote.most_interesting_man_in_the_world}", user: [yann, stuart, denis, alisa, doug, celso].sample)
file = File.open("app/assets/images/08.jpg")
toilet.photos.attach(io: file, filename: "BAR.png", content_type: "image/jpg")
toilet.save

toilet = Toilet.create!(name: "Board Game Diarrhea", price: (500..2000).to_a.sample, address: "#{Faker::Address.street_address}, #{Faker::Address.city}", short_description: "Pooples for your meeples!", description: "#{Faker::Quote.most_interesting_man_in_the_world}", user: [yann, stuart, denis, alisa, doug, celso].sample)
file = File.open("app/assets/images/07.png")
toilet.photos.attach(io: file, filename: "BAR.png", content_type: "image/jpg")
toilet.save

toilet = Toilet.create!(name: "Fart Friends", price: (500..2000).to_a.sample, address: "#{Faker::Address.street_address}, #{Faker::Address.city}", short_description: "It writes itself.", description: "#{Faker::Quote.most_interesting_man_in_the_world}", user: [yann, stuart, denis, alisa, doug, celso].sample)
file = File.open("app/assets/images/08.png")
toilet.photos.attach(io: file, filename: "BAR.png", content_type: "image/jpg")
toilet.save

toilet = Toilet.create!(name: "Stuart", price: (500..2000).to_a.sample, address: "#{Faker::Address.street_address}, #{Faker::Address.city}", short_description: "I'm a toilet human.", description: "#{Faker::Quote.most_interesting_man_in_the_world}", user: [yann, stuart, denis, alisa, doug, celso].sample)
file = File.open("app/assets/images/09.png")
toilet.photos.attach(io: file, filename: "BAR.png", content_type: "image/jpg")
toilet.save

puts "you now have #{Toilet.count} toilets"


puts "how about some bookings..."

loop_times = 1
while loop_times < 25
  date1 = DateTime.new(2024, 11, 23, 8, rand(1..59), 0)
  date2 = DateTime.new(2024, 11, 23, 9, rand(1..59), 0)
  user1 = User.all.sample
  toilet = Toilet.where.not(user_id: user1).sample
  Booking.create!(user: user1, toilet: toilet, start_time: date1, end_time: date2, status: "pending")
  loop_times += 1
end

puts "there are now #{Booking.count} bookings as well"
