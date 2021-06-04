# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts "destroying all records"

User.destroy_all
Event.destroy_all
puts "done"

puts "Creating new york events"

event = Event.new(
  location: "New York",
  date: "10/06/2021 20:00:00",
  price: 19.99,
  max_participants: 6,
  description: "Classic Speed Friend Finding",
  video_link: "www.google.de"
)
event.photo.attach(io: File.open('app/assets/images/new-york.jpg'), filename: 'new york.jpg')
event.save!
puts "event created"

event = Event.new(
  location: "New York",
  date: "01/07/2021 20:00:00",
  price: 19.99,
  max_participants: 6,
  description: "Classic Speed Friend Finding",
  video_link: "www.google.de"
)
event.photo.attach(io: File.open('app/assets/images/new-york.jpg'), filename: 'new york.jpg')
event.save!
puts "event created"

event = Event.new(
  location: "New York",
  date: "20/06/2021 20:00:00",
  price: 19.99,
  max_participants: 0,
  description: "Classic Speed Friend Finding",
  video_link: "www.google.de"
)
event.photo.attach(io: File.open('app/assets/images/new-york.jpg'), filename: 'new york.jpg')
event.save!
puts "event created"

event = Event.new(
  location: "New York",
  date: "03/06/2021 20:00:00",
  price: 19.99,
  max_participants: 6,
  description: "Classic Speed Friend Finding",
  video_link: "www.google.de"
)
event.photo.attach(io: File.open('app/assets/images/new-york.jpg'), filename: 'new york.jpg')
event.save!
puts "event created"


puts "creating some friends"



  user= User.new(
  first_name: "Joey",
  last_name: "Tribbiani",
  location: "New York",
  email: "joey@friends.com",
  password: "123456",
  birthday: "04 Jun 1991",
  admin: true
  )
  user.events << Event.last
  user.events << Event.first
  file = URI.open("https://i.guim.co.uk/img/media/ae14333615408ab5d5ba6c23810be683e0d6f631/389_282_1481_889/master/1481.jpg?width=1200&height=900&quality=85&auto=format&fit=crop&s=fe8e04916fba748b25cc93727609a391")
  user.avatar.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
  user.save!
  puts "Brought #{user.first_name} to life"

  user= User.new(
  first_name: "Ross",
  last_name: "Geller",
  location: "New York",
  email: "ross@friends.com",
  password: "123456",
  birthday: "10 apr 1989"
  )
  user.events << Event.last
  file = URI.open("https://static.wikia.nocookie.net/friends/images/3/35/Ross-geller.jpg/revision/latest?cb=20140306134540&path-prefix=de")
  user.avatar.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
  user.save!
  puts "Brought #{user.first_name} to life"


  user= User.new(
  first_name: "Phoebe",
  last_name: "Buffay",
  location: "New York",
  email: "phoebe@friends.com",
  password: "123456",
  birthday: "03 Aug 1992"
  )
  user.events << Event.last
  file = URI.open("https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/lisa-kudrow-friends-phoebe-buffay-1546435984.jpg?crop=1.00xw:0.410xh;0,0.0640xh&resize=1200:*")
  user.avatar.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
  user.save!
  puts "Brought #{user.first_name} to life"

  user= User.new(
    first_name: "Rachel",
    last_name: "Greene",
    location: "New York",
    email: "rachel@friends.com",
    password: "123456",
    birthday: "06 Sep 1992"
    )
    user.events << Event.last
    file = URI.open("https://imagesvc.meredithcorp.io/v3/mm/image?q=85&c=sc&poi=face&w=1605&h=2140&url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F20%2F2020%2F06%2F24%2FGettyImages-138427199-2000.jpg")
    user.avatar.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
    user.save!
    puts "Brought #{user.first_name} to life"


    user= User.new(
    first_name: "Monica",
    last_name: "Geller",
    location: "New York",
    email: "monica@friends.com",
    password: "123456",
    birthday: "25 Dec 1988"
    )
    user.events << Event.last
    file = URI.open("https://images.radio.com/aiu-media/GettyImages908315-74c6c800-ede5-4444-86fd-a46bc7cec688.jpg")
    user.avatar.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
    user.save!
    puts "Brought #{user.first_name} to life"

    user= User.new(
      first_name: "Chandler",
      last_name: "Bing",
      location: "New York",
      email: "chandler@friends.com",
      password: "123456",
      birthday: "04 nov 1993"
      )
      user.events << Event.last
      file = URI.open("https://bilder.t-online.de/b/85/97/21/24/id_85972124/tid_da/matthew-perry-in-friends-spielte-er-chandler-bing-.jpg")
      user.avatar.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
      user.save!
      puts "Brought #{user.first_name} to life"


      puts "Friends assembled"
