# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts "destroying all records"

VideoDate.destroy_all
User.destroy_all
Event.destroy_all
Value.destroy_all
Interest.destroy_all

puts "done"


puts "creating your personality"


  certainty = Value.new(
  name: "Certainty",
  description: "stability, orderliness, predictability",
  )
  url_certainty = 'https://res.cloudinary.com/dih0o5fng/image/upload/v1623009149/waldlichtung-7628d29d-8355-4f2d-b095-8d5be9b320e9_lygoqi.jpg'
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
  puts "challenge is now available"


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
  url_curiosity = 'https://res.cloudinary.com/dih0o5fng/image/upload/v1623009273/spielen-pflanzen-forschen_i9lvdv.jpg'
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
  url_appreciation = 'https://res.cloudinary.com/dih0o5fng/image/upload/v1623011863/hands-raised-sun-dawn_gyuua5.jpg'
  filename = File.basename(URI.parse(url_appreciation).path)
  file = URI.open(url_appreciation)
  appreciation.photo.attach(io: file, filename: filename)
  appreciation.save!
  puts "appreciation is now available"


  loyalty = Value.new(
  name: "Loyalty",
  description: "faithfulness",
  )
  url_loyalty = 'https://res.cloudinary.com/dih0o5fng/image/upload/v1623010603/family-patheos_six-reasons-wedding-rings-matter-think_ecpi8g.webp'
  filename = File.basename(URI.parse(url_loyalty).path)
  file = URI.open(url_loyalty)
  loyalty.photo.attach(io: file, filename: filename)
  loyalty.save!
  puts "loyalty is now available"

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


  equality = Value.new(
  name: "Equality",
  description: "equal right and opportunities for all",
  )
  url_equality = 'https://res.cloudinary.com/dih0o5fng/image/upload/v1623009786/bring-equality-justice-nonprofit-workplace_np4p1y.jpg'
  filename = File.basename(URI.parse(url_equality).path)
  file = URI.open(url_equality)
  equality.photo.attach(io: file, filename: filename)
  equality.save!
  puts "Equality is now available"


  ethics = Value.new(
  name: "Ethics",
  description: "moral behavior",
  )
  url_ethics = 'https://res.cloudinary.com/dih0o5fng/image/upload/v1623010272/g.foolcdn_anlc8b.jpg'
  filename = File.basename(URI.parse(url_ethics).path)
  file = URI.open(url_ethics)
  ethics.photo.attach(io: file, filename: filename)
  ethics.save!
  puts "ethics is now available"


  honesty = Value.new(
  name: "Honesty",
  description: "sincerity, frankness",
  )
  url_honesty = 'https://res.cloudinary.com/dih0o5fng/image/upload/v1623010607/parenting-gettyimages-693277562_gn7ugp.jpg'
  filename = File.basename(URI.parse(url_honesty).path)
  file = URI.open(url_honesty)
  honesty.photo.attach(io: file, filename: filename)
  honesty.save!
  puts "honesty is now available"

  puts "Congrats, seeds are now available for you to actually have values."



  puts "Final question - are you even interesting?"

  emojis = %w[😀 😃 😄 😁 😆 😅 😂 🤣 🥲 ☺️ 😊 😇 🙂 🙃 😉 😌 😍 🥰 😘 😗 😙 😚 😋 😛 😝 😜 🤪 🤨 🧐 🤓 😎 🥸 🤩 🥳 😏 😒 😞 😔 😟 😕 🙁 ☹️ 😣 😖 😫 😩 🥺 😢 😭 😤 😠 😡 🤬 🤯 😳 🥵 🥶 😱 😨 😰 😥 😓 🤗 🤔 🤭 🤫 🤥 😶 😐 😑 😬 🙄 😯 😦 😧 😮 😲 🥱 😴 🤤 😪 😵 🤐 🥴 🤢 🤮 🤧 😷 🤒 🤕 🤑 🤠 😈 👿 👹 👺 🤡 💩 👻 💀 ☠️ 👽 👾 🤖 🎃 😺 😸 😹 😻 😼 😽 🙀 😿 😾👋 🤚 🖐 ✋ 🖖 👌 🤌 🤏 ✌️ 🤞 🤟 🤘 🤙 👈 👉 👆 🖕 👇 ☝️ 👍 👎 ✊ 👊 🤛 🤜 👏 🙌 👐 🤲 🤝 🙏 ✍️ 💅 🤳 💪 🦾 🦵 🦿 🦶 👣 👂 🦻 👃 🫀 🫁 🧠 🦷 🦴 👀 👁 👅 👄 💋 🩸 👶 👧 🧒 👦 👩 🧑 👨 👩‍🦱 🧑‍🦱 👨‍🦱 👩‍🦰 🧑‍🦰 👨‍🦰 👱‍♀️ 👱 👱‍♂️ 👩‍🦳 🧑‍🦳 👨‍🦳 👩‍🦲 🧑‍🦲 👨‍🦲 🧔 👵 🧓 👴 👲 👳‍♀️ 👳 👳‍♂️ 🧕 👮‍♀️ 👮 👮‍♂️ 👷‍♀️ 👷 👷‍♂️ 💂‍♀️ 💂 💂‍♂️ 🕵️‍♀️ 🕵️ 🕵️‍♂️ 👩‍⚕️ 🧑‍⚕️ 👨‍⚕️ 👩‍🌾 🧑‍🌾 👨‍🌾 👩‍🍳 🧑‍🍳 👨‍🍳 👩‍🎓 🧑‍🎓 👨‍🎓 👩‍🎤 🧑‍🎤 👨‍🎤 👩‍🏫 🧑‍🏫 👨‍🏫 👩‍🏭 🧑‍🏭 👨‍🏭 👩‍💻 🧑‍💻 👨‍💻 👩‍💼 🧑‍💼 👨‍💼 👩‍🔧 🧑‍🔧 👨‍🔧 👩‍🔬 🧑‍🔬 👨‍🔬 👩‍🎨 🧑‍🎨 👨‍🎨 👩‍🚒 🧑‍🚒 👨‍🚒 👩‍✈️ 🧑‍✈️ 👨‍✈️ 👩‍🚀 🧑‍🚀 👨‍🚀 👩‍⚖️ 🧑‍⚖️ 👨‍⚖️ 👰‍♀️ 👰 👰‍♂️ 🤵‍♀️ 🤵 🤵‍♂️ 👸 🤴 🥷 🦸‍♀️ 🦸 🦸‍♂️ 🦹‍♀️ 🦹 🦹‍♂️ 🤶 🧑‍🎄 🎅 🧙‍♀️ 🧙 🧙‍♂️ 🧝‍♀️ 🧝 🧝‍♂️ 🧛‍♀️ 🧛 🧛‍♂️ 🧟‍♀️ 🧟 🧟‍♂️ 🧞‍♀️ 🧞 🧞‍♂️ 🧜‍♀️ 🧜 🧜‍♂️ 🧚‍♀️ 🧚 🧚‍♂️ 👼 🤰 🤱 👩‍🍼 🧑‍🍼 👨‍🍼 🙇‍♀️ 🙇 🙇‍♂️ 💁‍♀️ 💁 💁‍♂️ 🙅‍♀️ 🙅 🙅‍♂️ 🙆‍♀️ 🙆 🙆‍♂️ 🙋‍♀️ 🙋 🙋‍♂️ 🧏‍♀️ 🧏 🧏‍♂️ 🤦‍♀️ 🤦 🤦‍♂️ 🤷‍♀️ 🤷 🤷‍♂️ 🙎‍♀️ 🙎 🙎‍♂️ 🙍‍♀️ 🙍 🙍‍♂️ 💇‍♀️ 💇 💇‍♂️ 💆‍♀️ 💆 💆‍♂️ 🧖‍♀️ 🧖 🧖‍♂️ 💅 🤳 💃 🕺 👯‍♀️ 👯 👯‍♂️ 🕴 👩‍🦽 🧑‍🦽 👨‍🦽 👩‍🦼 🧑‍🦼 👨‍🦼 🚶‍♀️ 🚶 🚶‍♂️ 👩‍🦯 🧑‍🦯 👨‍🦯 🧎‍♀️ 🧎 🧎‍♂️ 🏃‍♀️ 🏃 🏃‍♂️ 🧍‍♀️ 🧍 🧍‍♂️ 👭 🧑‍🤝‍🧑 👬 👫 👩‍❤️‍👩 💑 👨‍❤️‍👨 👩‍❤️‍👨 👩‍❤️‍💋‍👩 💏 👨‍❤️‍💋‍👨 👩‍❤️‍💋‍👨 👪 👨‍👩‍👦 👨‍👩‍👧 👨‍👩‍👧‍👦 👨‍👩‍👦‍👦 👨‍👩‍👧‍👧 👨‍👨‍👦 👨‍👨‍👧 👨‍👨‍👧‍👦 👨‍👨‍👦‍👦 👨‍👨‍👧‍👧 👩‍👩‍👦 👩‍👩‍👧 👩‍👩‍👧‍👦 👩‍👩‍👦‍👦 👩‍👩‍👧‍👧 👨‍👦 👨‍👦‍👦 👨‍👧 👨‍👧‍👦 👨‍👧‍👧 👩‍👦 👩‍👦‍👦 👩‍👧 👩‍👧‍👦 👩‍👧‍👧 🗣 👤 👥 🫂 🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 👟 🥾 🥿 👠 👡 🩰 👢 👑 👒 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼🐶 🐱 🐭 🐹 🐰 🦊 🐻 🐼 🐻‍❄️ 🐨 🐯 🦁 🐮 🐷 🐽 🐸 🐵 🙈 🙉 🙊 🐒 🐔 🐧 🐦 🐤 🐣 🐥 🦆 🦅 🦉 🦇 🐺 🐗 🐴 🦄 🐝 🪱 🐛 🦋 🐌 🐞 🐜 🪰 🪲 🪳 🦟 🦗 🕷 🕸 🦂 🐢 🐍 🦎 🦖 🦕 🐙 🦑 🦐 🦞 🦀 🐡 🐠 🐟 🐬 🐳 🐋 🦈 🐊 🐅 🐆 🦓 🦍 🦧 🦣 🐘 🦛 🦏 🐪 🐫 🦒 🦘 🦬 🐃 🐂 🐄 🐎 🐖 🐏 🐑 🦙 🐐 🦌 🐕 🐩 🦮 🐕‍🦺 🐈 🐈‍⬛ 🪶 🐓 🦃 🦤 🦚 🦜 🦢 🦩 🕊 🐇 🦝 🦨 🦡 🦫 🦦 🦥 🐁 🐀 🐿 🦔 🐾 🐉 🐲 🌵 🎄 🌲 🌳 🌴 🪵 🌱 🌿 ☘️ 🍀 🎍 🪴 🎋 🍃 🍂 🍁 🍄 🐚 🪨 🌾 💐 🌷 🌹 🥀 🌺 🌸 🌼 🌻 🌞 🌝 🌛 🌜 🌚 🌕 🌖 🌗 🌘 🌑 🌒 🌓 🌔 🌙 🌎 🌍 🌏 🪐 💫 ⭐️ 🌟 ✨ ⚡️ ☄️ 💥 🔥 🌪 🌈 ☀️ 🌤 ⛅️ 🌥 ☁️ 🌦 🌧 ⛈ 🌩 🌨 ❄️ ☃️ ⛄️ 🌬 💨 💧 💦 ☔️ ☂️ 🌊 🌫🍏 🍎 🍐 🍊 🍋 🍌 🍉 🍇 🍓 🫐 🍈 🍒 🍑 🥭 🍍 🥥 🥝 🍅 🍆 🥑 🥦 🥬 🥒 🌶 🫑 🌽 🥕 🫒 🧄 🧅 🥔 🍠 🥐 🥯 🍞 🥖 🥨 🧀 🥚 🍳 🧈 🥞 🧇 🥓 🥩 🍗 🍖 🦴 🌭 🍔 🍟 🍕 🫓 🥪 🥙 🧆 🌮 🌯 🫔 🥗 🥘 🫕 🥫 🍝 🍜 🍲 🍛 🍣 🍱 🥟 🦪 🍤 🍙 🍚 🍘 🍥 🥠 🥮 🍢 🍡 🍧 🍨 🍦 🥧 🧁 🍰 🎂 🍮 🍭 🍬 🍫 🍿 🍩 🍪 🌰 🥜 🍯 🥛 🍼 🫖 ☕️ 🍵 🧃 🥤 🧋 🍶 🍺 🍻 🥂 🍷 🥃 🍸 🍹 🧉 🍾 🧊 🥄 🍴 🍽 🥣 🥡 🥢 🧂⚽️ 🏀 🏈 ⚾️ 🥎 🎾 🏐 🏉 🥏 🎱 🪀 🏓 🏸 🏒 🏑 🥍 🏏 🪃 🥅 ⛳️ 🪁 🏹 🎣 🤿 🥊 🥋 🎽 🛹 🛼 🛷 ⛸ 🥌 🎿 ⛷ 🏂 🪂 🏋️‍♀️ 🏋️ 🏋️‍♂️ 🤼‍♀️ 🤼 🤼‍♂️ 🤸‍♀️ 🤸 🤸‍♂️ ⛹️‍♀️ ⛹️ ⛹️‍♂️ 🤺 🤾‍♀️ 🤾 🤾‍♂️ 🏌️‍♀️ 🏌️ 🏌️‍♂️ 🏇 🧘‍♀️ 🧘 🧘‍♂️ 🏄‍♀️ 🏄 🏄‍♂️ 🏊‍♀️ 🏊 🏊‍♂️ 🤽‍♀️ 🤽 🤽‍♂️ 🚣‍♀️ 🚣 🚣‍♂️ 🧗‍♀️ 🧗 🧗‍♂️ 🚵‍♀️ 🚵 🚵‍♂️ 🚴‍♀️ 🚴 🚴‍♂️ 🏆 🥇 🥈 🥉 🏅 🎖 🏵 🎗 🎫 🎟 🎪 🤹 🤹‍♂️ 🤹‍♀️ 🎭 🩰 🎨 🎬 🎤 🎧 🎼 🎹 🥁 🪘 🎷 🎺 🪗 🎸 🪕 🎻 🎲 ♟ 🎯 🎳 🎮 🎰 🧩 🚗 🚕 🚙 🚌 🚎 🏎 🚓 🚑 🚒 🚐 🛻 🚚 🚛 🚜 🦯 🦽 🦼 🛴 🚲 🛵 🏍 🛺 🚨 🚔 🚍 🚘 🚖 🚡 🚠 🚟 🚃 🚋 🚞 🚝 🚄 🚅 🚈 🚂 🚆 🚇 🚊 🚉 ✈️ 🛫 🛬 🛩 💺 🛰 🚀 🛸 🚁 🛶 ⛵️ 🚤 🛥 🛳 ⛴ 🚢 ⚓️ 🪝 ⛽️ 🚧 🚦 🚥 🚏 🗺 🗿 🗽 🗼 🏰 🏯 🏟 🎡 🎢 🎠 ⛲️ ⛱ 🏖 🏝 🏜 🌋 ⛰ 🏔 🗻 🏕 ⛺️ 🛖 🏠 🏡 🏘 🏚 🏗 🏭 🏢 🏬 🏣 🏤 🏥 🏦 🏨 🏪 🏫 🏩 💒 🏛 ⛪️ 🕌 🕍 🛕 🕋 ⛩ 🛤 🛣 🗾 🎑 🏞 🌅 🌄 🌠 🎇 🎆 🌇 🌆 🏙 🌃 🌌 🌉 🌁⌚️ 📱 📲 💻 ⌨️ 🖥 🖨 🖱 🖲 🕹 🗜 💽 💾 💿 📀 📼 📷 📸 📹 🎥 📽 🎞 📞 ☎️ 📟 📠 📺 📻 🎙 🎚 🎛 🧭 ⏱ ⏲ ⏰ 🕰 ⌛️ ⏳ 📡 🔋 🔌 💡 🔦 🕯 🪔 🧯 🛢 💸 💵 💴 💶 💷 🪙 💰 💳 💎 ⚖️ 🪜 🧰 🪛 🔧 🔨 ⚒ 🛠 ⛏ 🪚 🔩 ⚙️ 🪤 🧱 ⛓ 🧲 🔫 💣 🧨 🪓 🔪 🗡 ⚔️ 🛡 🚬 ⚰️ 🪦 ⚱️ 🏺 🔮 📿 🧿 💈 ⚗️ 🔭 🔬 🕳 🩹 🩺 💊 💉 🩸 🧬 🦠 🧫 🧪 🌡 🧹 🪠 🧺 🧻 🚽 🚰 🚿 🛁 🛀 🧼 🪥 🪒 🧽 🪣 🧴 🛎 🔑 🗝 🚪 🪑 🛋 🛏 🛌 🧸 🪆 🖼 🪞 🪟 🛍 🛒 🎁 🎈 🎏 🎀 🪄 🪅 🎊 🎉 🎎 🏮 🎐 🧧 ✉️ 📩 📨 📧 💌 📥 📤 📦 🏷 🪧 📪 📫 📬 📭 📮 📯 📜 📃 📄 📑 🧾 📊 📈 📉 🗒 🗓 📆 📅 🗑 📇 🗃 🗳 🗄 📋 📁 📂 🗂 🗞 📰 📓 📔 📒 📕 📗 📘 📙 📚 📖 🔖 🧷 🔗 📎 🖇 📐 📏 🧮 📌 📍 ✂️ 🖊 🖋 ✒️ 🖌 🖍 📝 ✏️ 🔍 🔎 🔏 🔐 🔒 🔓❤️ 🧡 💛 💚 💙 💜 🖤 🤍 🤎 💔 ❣️ 💕 💞 💓 💗 💖 💘 💝 💟 ☮️ ✝️ ☪️ 🕉 ☸️ ✡️ 🔯 🕎 ☯️ ☦️ 🛐 ⛎ ♈️ ♉️ ♊️ ♋️ ♌️ ♍️ ♎️ ♏️ ♐️ ♑️ ♒️ ♓️ 🆔 ⚛️ 🉑 ☢️ ☣️ 📴 📳 🈶 🈚️ 🈸 🈺 🈷️ ✴️ 🆚 💮 🉐 ㊙️ ㊗️ 🈴 🈵 🈹 🈲 🅰️ 🅱️ 🆎 🆑 🅾️ 🆘 ❌ ⭕️ 🛑 ⛔️ 📛 🚫 💯 💢 ♨️ 🚷 🚯 🚳 🚱 🔞 📵 🚭 ❗️ ❕ ❓ ❔ ‼️ ⁉️ 🔅 🔆 〽️ ⚠️ 🚸 🔱 ⚜️ 🔰 ♻️ ✅ 🈯️ 💹 ❇️ ✳️ ❎ 🌐 💠 Ⓜ️ 🌀 💤 🏧 🚾 ♿️ 🅿️ 🛗 🈳 🈂️ 🛂 🛃 🛄 🛅 🚹 🚺 🚼 ⚧ 🚻 🚮 🎦 📶 🈁 🔣 ℹ️ 🔤 🔡 🔠 🆖 🆗 🆙 🆒 🆕 🆓 0️⃣ 1️⃣ 2️⃣ 3️⃣ 4️⃣ 5️⃣ 6️⃣ 7️⃣ 8️⃣ 9️⃣ 🔟 🔢 #️⃣ *️⃣ ⏏️ ▶️ ⏸ ⏯ ⏹ ⏺ ⏭ ⏮ ⏩ ⏪ ⏫ ⏬ ◀️ 🔼 🔽 ➡️ ⬅️ ⬆️ ⬇️ ↗️ ↘️ ↙️ ↖️ ↕️ ↔️ ↪️ ↩️ ⤴️ ⤵️ 🔀 🔁 🔂 🔄 🔃 🎵 🎶 ➕ ➖ ➗ ✖️ ♾ 💲 💱 ™️ ©️ ®️ 〰️ ➰ ➿ 🔚 🔙 🔛 🔝 🔜 ✔️ ☑️ 🔘 🔴 🟠 🟡 🟢 🔵 🟣 ⚫️ ⚪️ 🟤 🔺 🔻 🔸 🔹 🔶 🔷 🔳 🔲 ▪️ ▫️ ◾️ ◽️ ◼️ ◻️ 🟥 🟧 🟨 🟩 🟦 🟪 ⬛️ ⬜️ 🟫 🔈 🔇 🔉 🔊 🔔 🔕 📣 📢 👁‍🗨 💬 💭 🗯 ♠️ ♣️ ♥️ ♦️ 🃏 🎴 🀄️ 🕐 🕑 🕒 🕓 🕔 🕕 🕖 🕗 🕘 🕙 🕚 🕛 🕜 🕝 🕞 🕟 🕠 🕡 🕢 🕣 🕤 🕥 🕦 🕧🏳️ 🏴 🏁 🚩 🏳️‍🌈 🏳️‍⚧️ 🏴‍☠️ 🇦🇫 🇦🇽 🇦🇱 🇩🇿 🇦🇸 🇦🇩 🇦🇴 🇦🇮 🇦🇶 🇦🇬 🇦🇷 🇦🇲 🇦🇼 🇦🇺 🇦🇹 🇦🇿 🇧🇸 🇧🇭 🇧🇩 🇧🇧 🇧🇾 🇧🇪 🇧🇿 🇧🇯 🇧🇲 🇧🇹 🇧🇴 🇧🇦 🇧🇼 🇧🇷 🇮🇴 🇻🇬 🇧🇳 🇧🇬 🇧🇫 🇧🇮 🇰🇭 🇨🇲 🇨🇦 🇮🇨 🇨🇻 🇧🇶 🇰🇾 🇨🇫 🇹🇩 🇨🇱 🇨🇳 🇨🇽 🇨🇨 🇨🇴 🇰🇲 🇨🇬 🇨🇩 🇨🇰 🇨🇷 🇨🇮 🇭🇷 🇨🇺 🇨🇼 🇨🇾 🇨🇿 🇩🇰 🇩🇯 🇩🇲 🇩🇴 🇪🇨 🇪🇬 🇸🇻 🇬🇶 🇪🇷 🇪🇪 🇪🇹 🇪🇺 🇫🇰 🇫🇴 🇫🇯 🇫🇮 🇫🇷 🇬🇫 🇵🇫 🇹🇫 🇬🇦 🇬🇲 🇬🇪 🇩🇪 🇬🇭 🇬🇮 🇬🇷 🇬🇱 🇬🇩 🇬🇵 🇬🇺 🇬🇹 🇬🇬 🇬🇳 🇬🇼 🇬🇾 🇭🇹 🇭🇳 🇭🇰 🇭🇺 🇮🇸 🇮🇳 🇮🇩 🇮🇷 🇮🇶 🇮🇪 🇮🇲 🇮🇱 🇮🇹 🇯🇲 🇯🇵 🎌 🇯🇪 🇯🇴 🇰🇿 🇰🇪 🇰🇮 🇽🇰 🇰🇼 🇰🇬 🇱🇦 🇱🇻 🇱🇧 🇱🇸 🇱🇷 🇱🇾 🇱🇮 🇱🇹 🇱🇺 🇲🇴 🇲🇰 🇲🇬 🇲🇼 🇲🇾 🇲🇻 🇲🇱 🇲🇹 🇲🇭 🇲🇶 🇲🇷 🇲🇺 🇾🇹 🇲🇽 🇫🇲 🇲🇩 🇲🇨 🇲🇳 🇲🇪 🇲🇸 🇲🇦 🇲🇿 🇲🇲 🇳🇦 🇳🇷 🇳🇵 🇳🇱 🇳🇨 🇳🇿 🇳🇮 🇳🇪 🇳🇬 🇳🇺 🇳🇫 🇰🇵 🇲🇵 🇳🇴 🇴🇲 🇵🇰 🇵🇼 🇵🇸 🇵🇦 🇵🇬 🇵🇾 🇵🇪 🇵🇭 🇵🇳 🇵🇱 🇵🇹 🇵🇷 🇶🇦 🇷🇪 🇷🇴 🇷🇺 🇷🇼 🇼🇸 🇸🇲 🇸🇦 🇸🇳 🇷🇸 🇸🇨 🇸🇱 🇸🇬 🇸🇽 🇸🇰 🇸🇮 🇬🇸 🇸🇧 🇸🇴 🇿🇦 🇰🇷 🇸🇸 🇪🇸 🇱🇰 🇧🇱 🇸🇭 🇰🇳 🇱🇨 🇵🇲 🇻🇨 🇸🇩 🇸🇷 🇸🇿 🇸🇪 🇨🇭 🇸🇾 🇹🇼 🇹🇯 🇹🇿 🇹🇭 🇹🇱 🇹🇬 🇹🇰 🇹🇴 🇹🇹 🇹🇳 🇹🇷 🇹🇲 🇹🇨 🇹🇻 🇻🇮 🇺🇬 🇺🇦 🇦🇪 🇬🇧 🏴󠁧󠁢󠁥󠁮󠁧󠁿 🏴󠁧󠁢󠁳󠁣󠁴󠁿 🏴󠁧󠁢󠁷󠁬󠁳󠁿 🇺🇳 🇺🇸 🇺🇾 🇺🇿 🇻🇺 🇻🇦 🇻🇪 🇻🇳 🇼🇫 🇪🇭 🇾🇪 🇿🇲 🇿🇼]

  emojis.each do |emoji|
    interest = Interest.new(
      name: "#{emoji}")
    interest.save!
  end

  puts "interests created"



puts "Creating new york events"

event = Event.new(
  location: "New York",
  date: "13/06/2021 20:00:00",
  price: 19.99,
  max_participants: 4,
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
  max_participants: 12,
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
  max_participants: 4,
  description: "Classic Speed Friend Finding",
  video_link: "www.google.de"
)
event.photo.attach(io: File.open('app/assets/images/new-york.jpg'), filename: 'new york.jpg')
event.save!
puts "event created"

event = Event.new(
  location: "New York",
  date: "11/06/2021 19:00:00",
  price: 19.99,
  max_participants: 4,
  description: "Classic Speed Friend Finding",
  video_link: "www.google.de"
)
event.photo.attach(io: File.open('app/assets/images/new-york.jpg'), filename: 'new york.jpg')
event.save!
puts "event created"


puts "creating some friends"



  tim = User.new(
  first_name: "Tim",
  last_name: "Tribbiani",
  location: "New York",
  email: "tim@friends.com",
  password: "123456",
  birthday: "04 Jun 1991",
  admin: true
  )
  tim.events << Event.last
  tim.events << Event.first
  tim.events << Event.second
  file = URI.open("https://avatars.githubusercontent.com/u/81582275?v=4")
  tim.avatar.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
  tim.save!
  puts "Brought tim to life"

  marie= User.new(
  first_name: "Marie",
  last_name: "Geller",
  location: "New York",
  email: "marie@friends.com",
  password: "123456",
  birthday: "10 Apr 1989"
  )
  marie.events << Event.last
  marie.events << Event.first
  marie.events << Event.second
  file = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1618176645/sf1vwetmenit7kuowrnr.jpg")
  marie.avatar.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
  marie.save!
  puts "Brought marie to life"


  dan= User.new(
  first_name: "Dan",
  last_name: "Buffay",
  location: "New York",
  email: "dan@friends.com",
  password: "123456",
  birthday: "03 Aug 1992"
  )
  dan.events << Event.last
  dan.events << Event.first
  dan.events << Event.second
  file = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1617950447/ezgro2ykkw3sgnxgfuz3.jpg")
  dan.avatar.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
  dan.save!
  puts "Brought dan to life"

  lucas= User.new(
    first_name: "Lucas",
    last_name: "Greene",
    location: "New York",
    email: "lucas@friends.com",
    password: "123456",
    birthday: "06 Sep 1992"
    )
    lucas.events << Event.last
    lucas.events << Event.first
    lucas.events << Event.second
    file = URI.open("https://imagesvc.meredithcorp.io/v3/mm/image?q=85&c=sc&poi=face&w=1605&h=2140&url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F20%2F2020%2F06%2F24%2FGettyImages-138427199-2000.jpg")
    lucas.avatar.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
    lucas.save!
    puts "Brought lucas to life"


    monica= User.new(
    first_name: "Monica",
    last_name: "Geller",
    location: "New York",
    email: "monica@friends.com",
    password: "123456",
    birthday: "25 Dec 1988"
    )
    # user.events << Event.last
    file = URI.open("https://images.radio.com/aiu-media/GettyImages908315-74c6c800-ede5-4444-86fd-a46bc7cec688.jpg")
    monica.events << Event.first
    monica.avatar.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
    monica.save!
    puts "Brought monica to life"

    chandler = User.new(
      first_name: "Chandler",
      last_name: "Bing",
      location: "New York",
      email: "chandler@friends.com",
      password: "123456",
      birthday: "04 nov 1993"
      )
      # user.events << Event.last
      file = URI.open("https://bilder.t-online.de/b/85/97/21/24/id_85972124/tid_da/matthew-perry-in-friends-spielte-er-chandler-bing-.jpg")
      chandler.avatar.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
      chander.events << Event.first
      chandler.save!
      puts "Brought chandler to life"

      puts "Friends assembled"
      puts "Time to do a little Hamburg-Crew"

      fynn= User.new(
      first_name: "Fynn",
      last_name: "Kliemann",
      location: "Hamburg",
      email: "fynn@kliemann.com",
      password: "123456",
      birthday: "04 nov 1993",
      admin: true
      )
      fynn.events << Event.third
      file = URI.open("https://content1.promiflash.de/article-images/video_1080/fynn-kliemann-schaut-neutral.jpg")
      fynn.avatar.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
      fynn.save!
      puts "Brought fynn to life"

      uwe= User.new(
      first_name: "Uwe",
      last_name: "Seeler",
      location: "Hamburg",
      email: "Uwe@hsv.com",
      password: "123456",
      birthday: "01 nov 1936"
      )
      uwe.events << Event.third
      file = URI.open("https://www.br.de/themen/sport/inhalt/fussball/uwe-seeler-118~_v-img__16__9__xl_-d31c35f8186ebeb80b0cd843a7c267a0e0c81647.jpg?version=08a41")
      uwe.avatar.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
      uwe.save!
      puts "Brought uwe to life"

      angela= User.new(
        first_name: "Angela",
        last_name: "Merkel",
        location: "Hamburg",
        email: "Angie@kanzlerin.com",
        password: "123456",
        birthday: "04 nov 1966"
        )
        angela.events << Event.third
        file = URI.open("https://www.tagesspiegel.de/images/bundeskanzlerin-angela-merkel/27062726/1-format43.jpg")
        angela.avatar.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
        angela.save!
        puts "Brought angela to life"

e = Event.last
e.booking_open = false
e.save

UserValue.create!(user: tim, value: fame, counter: 5)
tim.add_core_value(fame)
UserValue.create!(user:tim, value: reputation, counter: 4)
tim.add_core_value(reputation)
UserValue.create!(user:tim, value: passion, counter: 3)
tim.add_core_value(passion)
tim.save!
puts "joey has completed the value test!"

UserValue.create!(user: marie, value: certainty, counter: 5)
marie.add_core_value(certainty)
UserValue.create!(user:marie, value: honesty, counter: 4)
marie.add_core_value(honesty)
UserValue.create!(user:marie, value: appreciation, counter: 3)
marie.add_core_value(appreciation)
marie.save!
puts "ross has completed the value test!"

UserValue.create!(user: dan, value: spirituality, counter: 5)
dan.add_core_value(spirituality)
UserValue.create!(user:dan, value: excitement, counter: 4)
dan.add_core_value(excitement)
UserValue.create!(user:dan, value: passion, counter: 3)
dan.add_core_value(passion)
dan.save!
puts "phoebe has completed the value test!"

UserValue.create!(user: lucas, value: beauty, counter: 5)
lucas.add_core_value(beauty)
UserValue.create!(user:lucas, value: excitement, counter: 4)
lucas.add_core_value(excitement)
UserValue.create!(user:lucas, value: reputation, counter: 3)
lucas.add_core_value(reputation)
lucas.save!
puts "rachel has completed the value test!"

UserValue.create!(user: monica, value: spirituality, counter: 5)
monica.add_core_value(spirituality)
UserValue.create!(user:monica, value: excitement, counter: 4)
monica.add_core_value(excitement)
UserValue.create!(user:monica, value: passion, counter: 3)
monica.add_core_value(passion)
monica.save!
puts "monica has completed the value test!"

UserValue.create!(user: chandler, value: accountability, counter: 5)
chandler.add_core_value(accountability)
UserValue.create!(user:chandler, value: certainty, counter: 4)
chandler.add_core_value(certainty)
UserValue.create!(user:chandler, value: honesty, counter: 3)
chandler.add_core_value(honesty)
chandler.save!
puts "chandler has completed the value test!"

UserValue.create!(user: fynn, value: adventure, counter: 5)
fynn.add_core_value(adventure)
UserValue.create!(user:fynn, value: variety, counter: 4)
fynn.add_core_value(variety)
UserValue.create!(user:fynn, value: honesty, counter: 3)
fynn.add_core_value(honesty)
fynn.save!
puts "fynn has completed the value test!"

UserValue.create!(user: uwe, value: accountability, counter: 5)
uwe.add_core_value(accountability)
UserValue.create!(user:uwe, value: passion, counter: 4)
uwe.add_core_value(passion)
UserValue.create!(user:uwe, value: courage, counter: 3)
uwe.add_core_value(courage)
uwe.save!
puts "uwe has completed the value test!"

UserValue.create!(user: angela, value: accountability, counter: 5)
angela.add_core_value(accountability)
UserValue.create!(user:angela, value: respect, counter: 4)
angela.add_core_value(respect)
UserValue.create!(user:angela, value: independence, counter: 3)
angela.add_core_value(independence)
angela.save!
puts "angie has completed the value test!"



        puts "Seeds finished.. well done..."

# joey.add_core_value(fame)
# ...
# joey.save!







