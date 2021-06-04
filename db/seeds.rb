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

puts "INTERMISSION... This one goes out to Hamburg!"
event = Event.new(
  location: "Hamburg",
  date: "01/07/2021 20:00:00",
  price: 19.99,
  max_participants: 6,
  description: "Classic Speed Friend Finding",
  video_link: "www.google.de"
)
event.photo.attach(io: File.open('app/assets/images/Hamburg-besser.jpg'), filename: 'Hamburg.jpg')
event.save!
puts "Hamburg event created, let´s get back to Neeeeew York!"

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
      puts "Time to do a little Hamburg-Crew"

      user= User.new(
      first_name: "Fynn",
      last_name: "Kliemann",
      location: "Hamburg",
      email: "fynn@kliemann.com",
      password: "123456",
      birthday: "04 nov 1993",
      admin: true
      )
      user.events << Event.third
      file = URI.open("https://content1.promiflash.de/article-images/video_1080/fynn-kliemann-schaut-neutral.jpg")
      user.avatar.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
      user.save!
      puts "Brought #{user.first_name} to life"

      user= User.new(
      first_name: "Uwe",
      last_name: "Seeler",
      location: "Hamburg",
      email: "Uwe@hsv.com",
      password: "123456",
      birthday: "01 nov 1936"
      )
      user.events << Event.third
      file = URI.open("https://www.br.de/themen/sport/inhalt/fussball/uwe-seeler-118~_v-img__16__9__xl_-d31c35f8186ebeb80b0cd843a7c267a0e0c81647.jpg?version=08a41")
      user.avatar.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
      user.save!
      puts "Brought #{user.first_name} to life"

      user= User.new(
        first_name: "Angela",
        last_name: "Merkel",
        location: "Hamburg",
        email: "Angie@kanzlerin.com",
        password: "123456",
        birthday: "04 nov 1966"
        )
        user.events << Event.third
        file = URI.open("https://www.tagesspiegel.de/images/bundeskanzlerin-angela-merkel/27062726/1-format43.jpg")
        user.avatar.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
        user.save!
        puts "Brought #{user.first_name} to life"
        puts "Seeds finished.. well done..."







puts "creating your personality"


  certainty= Value.new(
  name: "Certainty",
  description: "stability, orderliness, predictability",
  )
  url_certainty = 'https://res.cloudinary.com/dih0o5fng/image/upload/v1622808868/Target_cptkyc.jpg'
  filename = File.basename(URI.parse(url_certainty).path)
  file = URI.open(url_certainty)
  certainty.photo.attach(io: file, filename: filename)
  certainty.save!
  puts "certainty is now available"


control = Value.new(
  name: "Control",
  description: "control of the situation or environment",
  )
  url_control = 'https://res.cloudinary.com/dih0o5fng/image/upload/v1622808964/maxresdefault_ebexh0.jpg'
  filename = File.basename(URI.parse(url_control).path)
  file = URI.open(url_control)
  control.photo.attach(io: file, filename: filename)
  control.save!
  puts "control is now available"


security = Value.new(
  name: "Security",
  description: "being free from danger or threat",
  )
  url_security = 'https://res.cloudinary.com/dih0o5fng/image/upload/v1622809050/Layer7-Header-it-security_io8bon.jpg'
  filename = File.basename(URI.parse(url_security).path)
  file = URI.open(url_security)
  security.photo.attach(io: file, filename: filename)
  security.save!
  puts "security is now available"


  peace = Value.new(
  name: "Peace",
  description: "calm, freedom from conflict",
  )
  url_peace = 'https://res.cloudinary.com/dih0o5fng/image/upload/v1622809727/depositphotos_7136017-stock-photo-stack-of-stones_yqw2ey.jpg'
  filename = File.basename(URI.parse(url_peace).path)
  file = URI.open(url_peace)
  peace.photo.attach(io: file, filename: filename)
  peace.save!
  puts "peace is now available"


  health = Value.new(
  name: "Health",
  description: "well-being, fitness, not being sick",
  )
  url_health = 'https://res.cloudinary.com/dih0o5fng/image/upload/v1622809811/322734_1100-1100x628_ixapti.jpg'
  filename = File.basename(URI.parse(url_health).path)
  file = URI.open(url_health)
  health.photo.attach(io: file, filename: filename)
  health.save!
  puts "health is now available"


  discipline = Value.new(
  name: "Discipline",
  description: "obedience, self-control",
  )
  url_discipline = 'https://res.cloudinary.com/dih0o5fng/image/upload/v1622809969/960x0_ssnsam.jpg'
  filename = File.basename(URI.parse(url_discipline).path)
  file = URI.open(url_discipline)
  discipline.photo.attach(io: file, filename: filename)
  discipline.save!
  puts "discipline is now available"


  job = Value.new(
  name: "Job Security",
  description: "not worrying about losing your job",
  )
  url_job = 'https://res.cloudinary.com/dih0o5fng/image/upload/v1622810239/People-at-Work_mj22u7.jpg'
  filename = File.basename(URI.parse(url_job).path)
  file = URI.open(url_job)
  job.photo.attach(io: file, filename: filename)
  job.save!
  puts "job-security is now available"


  wealth = Value.new(
  name: "Wealth",
  description: "money, material goods, luxury lifestyle",
  )
  url_wealth = 'https://res.cloudinary.com/dih0o5fng/image/upload/v1622810347/a-wealth-of-words-croesus-1233_1x_wa1n4v.jpg'
  filename = File.basename(URI.parse(url_wealth).path)
  file = URI.open(url_wealth)
  wealth.photo.attach(io: file, filename: filename)
  wealth.save!
  puts "wealth is now available"


  finance = Value.new(
  name: "Financial-Stability",
  description: "stable income, Financial freedom",
  )
  url_finance = 'https://res.cloudinary.com/dih0o5fng/image/upload/v1622810648/1_ovHVjo9l7uauq1S2QsqtWw_bafmuh.jpg'
  filename = File.basename(URI.parse(url_finance).path)
  file = URI.open(url_finance)
  finance.photo.attach(io: file, filename: filename)
  finance.save!
  puts "Financial-Stability is now available"


  pleasure = Value.new(
  name: "Pleasure",
  description: "enjoyment, happiness, satisfaction",
  )
  url_pleasure = 'https://res.cloudinary.com/dih0o5fng/image/upload/v1622810762/1542929407014_ik4t1h.jpg'
  filename = File.basename(URI.parse(url_pleasure).path)
  file = URI.open(url_pleasure)
  pleasure.photo.attach(io: file, filename: filename)
  pleasure.save!
  puts "pleasure is now available"


  tradition = Value.new(
  name: "Tradition",
  description: "respecting customs, practicing rites",
  )
  url_tradition = 'https://res.cloudinary.com/dih0o5fng/image/upload/v1622810955/german-traditional-wear_iihbqp.jpg'
  filename = File.basename(URI.parse(url_tradition).path)
  file = URI.open(url_tradition)
  tradition.photo.attach(io: file, filename: filename)
  tradition.save!
  puts "tradition is now available"


  trusting = Value.new(
  name: "Trust",
  description: "a  belief in someone or something",
  )
  url_trusting = 'https://res.cloudinary.com/dih0o5fng/image/upload/v1622810974/1_a9-f3EFhEi6dftgQntIxLA_cdwqwt.jpg'
  filename = File.basename(URI.parse(url_trusting).path)
  file = URI.open(url_trusting)
  trusting.photo.attach(io: file, filename: filename)
  trusting.save!
  puts "trust is now available"


  privacy = Value.new(
  name: "Privacy",
  description: "the right to have secrets. Discretion",
  )
  url_privacy = 'https://res.cloudinary.com/dih0o5fng/image/upload/v1622809050/Layer7-Header-it-security_io8bon.jpg'
  filename = File.basename(URI.parse(url_privacy).path)
  file = URI.open(url_privacy)
  privacy.photo.attach(io: file, filename: filename)
  privacy.save!
  puts "privacy is now available"


  accountability = Value.new(
  name: "Accountability",
  description: "responsibility, dependability",
  )
  url_accountability = 'https://res.cloudinary.com/dih0o5fng/image/upload/v1622811084/surgeon_kspxv2.jpg'
  filename = File.basename(URI.parse(url_accountability).path)
  file = URI.open(url_accountability)
  accountability.photo.attach(io: file, filename: filename)
  accountability.save!
  puts "accountability is now available"


  challenge = Value.new(
  name: "Challenge",
  description: "testing your own abilities, competition",
  )
  url_accountability = 'https://res.cloudinary.com/dih0o5fng/image/upload/v1622811084/surgeon_kspxv2.jpg'
  filename = File.basename(URI.parse(url_accountability).path)
  file = URI.open(url_accountability)
  accountability.photo.attach(io: file, filename: filename)
  accountability.save!
  puts "accountability is now available"


  adventure = Value.new(
  name: "Adventure",
  description: "looking for exciting and risky activities",
  )
  url_adventure = 'https://res.cloudinary.com/dih0o5fng/image/upload/v1622811436/c9Zaa3_vomr9d.jpg'
  filename = File.basename(URI.parse(url_adventure).path)
  file = URI.open(url_adventure)
  adventure.photo.attach(io: file, filename: filename)
  adventure.save!
  puts "adventure is now available"


  variety = Value.new(
  name: "Variety",
  description: "frequent change, diversity",
  )
  url_variety = 'https://res.cloudinary.com/dih0o5fng/image/upload/v1622811436/c9Zaa3_vomr9d.jpg'
  filename = File.basename(URI.parse(url_variety).path)
  file = URI.open(url_variety)
  variety.photo.attach(io: file, filename: filename)
  variety.save!
  puts "variety is now available"


  excitement = Value.new(
  name: "Excitement",
  description: "great enthusiasm, eagerness",
  )
  url_excitement = 'https://res.cloudinary.com/dih0o5fng/image/upload/v1622812104/iStock-858370790_w9g6zp.jpg'
  filename = File.basename(URI.parse(url_excitement).path)
  file = URI.open(url_excitement)
  excitement.photo.attach(io: file, filename: filename)
  excitement.save!
  puts "excitement is now available"


  courage = Value.new(
  name: "Courage",
  description: "fearlessness, bravery",
  )
  url_courage = 'https://res.cloudinary.com/dih0o5fng/image/upload/v1622812291/d46fd543cd198c4735182ca75c8f504a04108104_hq_sgb4kj.jpg'
  filename = File.basename(URI.parse(url_courage).path)
  file = URI.open(url_courage)
  courage.photo.attach(io: file, filename: filename)
  courage.save!
  puts "courage is now available"


  curiosity = Value.new(
  name: "Curiosity",
  description: "willingness to explore and learn",
  )
  url_curiosity = 'https://res.cloudinary.com/dih0o5fng/image/upload/v1622812613/curious-george2_kjdqmw.jpg'
  filename = File.basename(URI.parse(url_curiosity).path)
  file = URI.open(url_curiosity)
  curiosity.photo.attach(io: file, filename: filename)
  curiosity.save!
  puts "curiosity is now available"


  creativity = Value.new(
  name: "Creativity",
  description: "imagination, inventiveness",
  )
  url_creativity = 'https://res.cloudinary.com/dih0o5fng/image/upload/v1622813424/creativy_g4bpej.jpg'
  filename = File.basename(URI.parse(url_creativity).path)
  file = URI.open(url_creativity)
  creativity.photo.attach(io: file, filename: filename)
  creativity.save!
  puts "creativity is now available"


  reputation = Value.new(
  name: "Reputation",
  description: "other people’s opinion",
  )
  url_reputation = 'https://res.cloudinary.com/dih0o5fng/image/upload/v1622813562/Content-image---newspapers_0_khhgcy.jpg'
  filename = File.basename(URI.parse(url_reputation).path)
  file = URI.open(url_reputation)
  reputation.photo.attach(io: file, filename: filename)
  reputation.save!
  puts "reputation is now available"


  respect = Value.new(
  name: "Respect",
  description: "honour and care shown towards someone",
  )
  url_respect = 'https://res.cloudinary.com/dih0o5fng/image/upload/v1622813688/handshake-1_hmwadx.jpg'
  filename = File.basename(URI.parse(url_respect).path)
  file = URI.open(url_respect)
  respect.photo.attach(io: file, filename: filename)
  respect.save!
  puts "respect is now available"


  authority = Value.new(
  name: "Authority",
  description: "the right to lead and control ",
  )
  url_authority = 'https://res.cloudinary.com/dih0o5fng/image/upload/v1622813330/persuasive-speech-topics_xyrtcd.jpg'
  filename = File.basename(URI.parse(url_authority).path)
  file = URI.open(url_authority)
  authority.photo.attach(io: file, filename: filename)
  authority.save!
  puts "authority is now available"


  fame = Value.new(
  name: "Fame",
  description: "being known or recognised by many people",
  )
  url_fame = 'https://res.cloudinary.com/dih0o5fng/image/upload/v1622813221/paparazzi_a8hdmm.jpg'
  filename = File.basename(URI.parse(url_fame).path)
  file = URI.open(url_fame)
  fame.photo.attach(io: file, filename: filename)
  fame.save!
  puts "fame is now available"


  authenticity = Value.new(
  name: "Authenticity",
  description: "truthfulness, genuineness",
  )
  url_authenticity = 'https://res.cloudinary.com/dih0o5fng/image/upload/v1622813145/48b5694c631d3ead195a47daa579de04_bwbjeb.jpg'
  filename = File.basename(URI.parse(url_authenticity).path)
  file = URI.open(url_authenticity)
  authenticity.photo.attach(io: file, filename: filename)
  authenticity.save!
  puts "authenticity is now available"


  beauty = Value.new(
  name: "Beauty",
  description: "aesthetics, attractiveness ",
  )
  url_beauty = 'https://res.cloudinary.com/dih0o5fng/image/upload/v1622813033/cropped-AdobeStock_106421805_vb5uqy.jpg'
  filename = File.basename(URI.parse(url_beauty).path)
  file = URI.open(url_beauty)
  beauty.photo.attach(io: file, filename: filename)
  beauty.save!
  puts "beauty is now available"


  appreciation = Value.new(
  name: "Appreciation",
  description: "recognition of value or worth",
  )
  url_appreciation = 'https://res.cloudinary.com/dih0o5fng/image/upload/v1622812781/92946_sq31tc.jpg'
  filename = File.basename(URI.parse(url_appreciation).path)
  file = URI.open(url_appreciation)
  appreciation.photo.attach(io: file, filename: filename)
  appreciation.save!
  puts "appreciation is now available"


  passion = Value.new(
  name: "Passion",
  description: "a vocation or loved hobby",
  )
  url_passion = 'https://res.cloudinary.com/dih0o5fng/image/upload/v1622812781/92946_sq31tc.jpg'
  filename = File.basename(URI.parse(url_passion).path)
  file = URI.open(url_passion)
  passion.photo.attach(io: file, filename: filename)
  passion.save!
  puts "passion is now available"


  independence = Value.new(
  name: "Independence",
  description: "self-reliance, self-sufficiency ",
  )
  url_independence = 'https://res.cloudinary.com/dih0o5fng/image/upload/v1622812675/people-2604680_960_720_mdxqxo.jpg'
  filename = File.basename(URI.parse(url_independence).path)
  file = URI.open(url_independence)
  independence.photo.attach(io: file, filename: filename)
  independence.save!
  puts "Independence is now available"


  intelligence = Value.new(
  name: "Intelligence",
  description: "logical thinking, quick learning",
  )
  url_intelligence = 'https://res.cloudinary.com/dih0o5fng/image/upload/v1622808714/Artificial-Intelligence-AI-Automotive-AT_tcm53-91268_xqdthd.jpg'
  filename = File.basename(URI.parse(url_intelligence).path)
  file = URI.open(url_intelligence)
  intelligence.photo.attach(io: file, filename: filename)
  intelligence.save!
  puts "Intelligence is now available"


  spirituality = Value.new(
  name: "Spirituality",
  description: "a vocation or loved hobby",
  )
  url_spirituality = 'https://res.cloudinary.com/dih0o5fng/image/upload/v1622804940/803561-spiritual-thinkstock_a63bxn.jpg'
  filename = File.basename(URI.parse(url_spirituality).path)
  file = URI.open(url_spirituality)
  spirituality.photo.attach(io: file, filename: filename)
  spirituality.save!
  puts "Spirituality is now available"


  equality= Value.new(
  name: "Equality",
  description: "equal right and opportunities for all",
  )
  url_equality = 'https://res.cloudinary.com/dih0o5fng/image/upload/v1622808535/bring-equality-justice-nonprofit-workplace_b8xy6t.jpg'
  filename = File.basename(URI.parse(url_equality).path)
  file = URI.open(url_spirituality)
  equality.photo.attach(io: file, filename: filename)
  equality.save!
  puts "Equality is now available"



puts "Congrats, seeds are now available for you to actually have values."

