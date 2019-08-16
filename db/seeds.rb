# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroying everything"

Review.destroy_all
Reservation.destroy_all
Dragon.destroy_all
User.destroy_all


puts "Creating 4 users"
nicolo = User.create(first_name: "Nicolo", last_name: "Buzzi", email: "nicolo@buzzi.org", password: "12345678")
anna = User.create(first_name: "Anna", last_name: "Viktoria", email: "anna@gmail.com", password: "123456")
marie = User.create(first_name: "Marie", last_name: "Hvam", email: "marie@hotmail.com", password: "123456")
nathan = User.create(first_name: "Nathan", last_name: "Morris", email: "nathan@gmail.com", password: "123456")
puts "4 users success created"

puts "Creating dragon 1"
dragon = Dragon.new(user: nathan, name: 'Teostora', age: 150, price: 8, country_of_origin: 'Iran', location: 'Yellowstone Caldera')
dragon.remote_photo_url = "https://i.redd.it/5jlzxpm1yf901.jpg"
dragon.save!

puts "Creating dragon 2"
dragon = Dragon.new(user: nicolo, name: 'Lunaria', age: 130, price: 6, country_of_origin: 'Pakistan', location: 'Krakatoa')
dragon.remote_photo_url = "http://kojiiiima.sakura.ne.jp/WP/wp-content/uploads/2018/06/IMG_8406.jpg"
dragon.save!

puts "Creating dragon 3"
dragon = Dragon.new(user: nicolo, name: 'Toothless', age: 80 , price: 2, country_of_origin: 'England', location: 'Isle of Man')
dragon.remote_photo_url = "https://stash.wehavedragons.org/dragon_hoard/uploads/2019/noah-mesh-toothless-watermark.jpg"
dragon.save!

puts "Creating dragon 4"
dragon = Dragon.new(user: nicolo, name: 'Death-Wing', age: 750,price: 10, country_of_origin: 'Italy', location: 'Guantanamo Bay')
dragon.remote_photo_url = "https://66.media.tumblr.com/f91f76abbc620c22407c6fd9d1891607/tumblr_pm8l48P9YX1y4j7n3o9_1280.png"
dragon.save!

puts "Creating dragon 5"
dragon = Dragon.new(user: marie, name: 'Thunder-Jiao-dragon', age: 100, price: 2, country_of_origin: 'Korea', location: 'Himalayas')
dragon.remote_photo_url = "https://wallup.net/wp-content/uploads/2016/04/10/295797-artwork-fantasy_art-dragon-_World_of_Warcraft.jpg"
dragon.save!

puts "Creating dragon 6"
dragon = Dragon.new(user: marie, name: 'Jiao-dragon', age: 200, price: 2, country_of_origin: 'China', location: 'Himalayas')
dragon.remote_photo_url = "http://i.imgur.com/Emfjcm1.png"
dragon.save!

puts "Creating dragon 7"
dragon = Dragon.new(user: nathan, name: 'Kukulkan', age: 2500, price: 4, country_of_origin: 'Peru', location: 'Machu Picchu')
dragon.remote_photo_url = "https://res.cloudinary.com/dtxjlqqqo/image/upload/v1565961646/e891de54421d5e68db57fdda941106dd_mn7jke.jpg"
dragon.save!

puts "Creating dragon 8"
dragon = Dragon.new(user: nathan, name: 'Leviathan', age: 3500,price: 12, country_of_origin: 'Israel', location: 'Naples')
dragon.remote_photo_url = "https://i.pinimg.com/originals/07/f4/1a/07f41a9822512596f08cd8b0f5395975.jpg"
dragon.save!

puts "Creating dragon 9"
dragon = Dragon.new(user: marie, name: 'Kushala', age: 300, price: 6, country_of_origin: 'England', location: 'White Cliffs of Dover')
dragon.remote_photo_url = "https://www.pngkey.com/png/full/155-1559555_mhw-kushala-daora-render-monster-hunter-world-kushala.png"
dragon.save!

puts "Creating dragon 10"
dragon = Dragon.new(user: anna, name: 'Nergigante', age: 280, price: 6, country_of_origin: 'Romania', location: 'Cliffs of Moher')
dragon.remote_photo_url = "https://res.cloudinary.com/dtxjlqqqo/image/upload/v1565708601/Nergigante_evrnz3.png"
dragon.save!

puts "Creating dragon 11"
dragon = Dragon.new(user: anna, name: 'Smaug', age: 450, price: 8, country_of_origin: 'New Zealand', location: 'Cappadocia')
dragon.remote_photo_url = "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/ea914385-70d7-476d-aa3b-37d0c449c464/d7c3rc5-2f194bd3-560f-4c59-8b18-15805122aa66.jpg/v1/fill/w_1385,h_577,q_70,strp/the_hobbit_smaug_01_by_giuseppedirosso_d7c3rc5-pre.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9ODAwIiwicGF0aCI6IlwvZlwvZWE5MTQzODUtNzBkNy00NzZkLWFhM2ItMzdkMGM0NDljNDY0XC9kN2MzcmM1LTJmMTk0YmQzLTU2MGYtNGM1OS04YjE4LTE1ODA1MTIyYWE2Ni5qcGciLCJ3aWR0aCI6Ijw9MTkyMCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.idSDoSIji33UIoGGRlM_zucbdRnxVTKKjVSFu2zfChg"
dragon.save!

puts "Creating dragon 12"
dragon = Dragon.new(user: anna, name: 'Aurelion Sol', age: 50, price: 4, country_of_origin: 'United States', location: 'Gran Telescopio Canarias')
dragon.remote_photo_url = "https://hdqwalls.com/download/aurelion-sol-league-of-legends-3840x2160.jpg"
dragon.save!

puts "Creating dragon 13"
dragon = Dragon.new(user: anna, name: 'Fafnir', age: 750, price: 9, country_of_origin: 'Danemark', location: 'Randers Fjord')
dragon.remote_photo_url = "http://vignette3.wikia.nocookie.net/finalfantasy/images/4/4b/FFLTNS_Fafnir_Artwork.jpg/revision/latest?cb=20160924060949"
dragon.save!

puts "Creating dragon 14"
dragon = Dragon.new(user: nathan, name: 'Safira', age: 25, price: 7, country_of_origin: 'France', location: 'Grand Rex')
dragon.remote_photo_url = "https://pm1.narvii.com/6787/8135d01554f5077b3606e97eb9da89bc33c16993v2_hq.jpg"
dragon.save!
