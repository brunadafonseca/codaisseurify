Artist.destroy_all
Song.destroy_all
Photo.destroy_all

lana_del_rey = Artist.create!(name: "Lana del Rey", genre: "Baroque pop, dream pop, trip hop, indie pop")
darkside = Artist.create!(name: "Darkside", genre: "Electronica, experimental, downtempo, ambient")
pink_floyd = Artist.create!(name: "Pink Floyd", genre: "Progressive rock, art rock, psychedelic rock")
red_hot = Artist.create!(name: "Red Hot Chili Peppers", genre: "Funk rock, alternative rock, funk metal, rap rock")
daughter = Artist.create!(name: "Daughter", genre: "Indie folk, indie rock, alternative rock, folk rock, neo folk, ambient")
nirvana = Artist.create!(name: "Nirvana", genre: "Alternative, Indie")
eddie_vedder = Artist.create!(name: "Eddie Vedder", genre: "Alternative, Indie")
cas = Artist.create!(name: "Cigarettes After Sex", genre: "Alternative, Indie")
foreign_fields = Artist.create!(name: "Foreign Fields", genre: "Alternative, Indie")
air = Artist.create!(name: "Air", genre: "Alternative, Indie")
amy = Artist.create!(name: "Amy Winehouse", genre: "Alternative, Indie")

art_deco = Song.create!(name: "Art Deco", artist: lana_del_rey)
dark_paradise = Song.create!(name: "Dark Paradise", artist: lana_del_rey)
body_electric = Song.create!(name: "Body Electric", artist: lana_del_rey)

paper_trails = Song.create!(name: "Paper Trails", artist: darkside)
heart = Song.create!(name: "Paper Trails", artist: darkside)
the_only_shrine_ive_seen = Song.create!(name: "The Only Shrine I've Seen", artist: darkside)

time = Song.create!(name: "Time", artist: pink_floyd)
high_hopes = Song.create!(name: "High Hopes", artist: pink_floyd)
brain_damage = Song.create!(name: "Brain Damage", artist: pink_floyd)

river_kings = Song.create!(name: "The River Kings", artist: foreign_fields)
names_and_races = Song.create!(name: "Names and Races", artist: foreign_fields)
little_lover = Song.create!(name: "Little Lover", artist: foreign_fields)

photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dyyxiefx5/image/upload/v1507935082/codaisseurify/018c6ecc5c71e09ad1fddd60fca72c5b.357x357x1.jpg", artist: lana_del_rey)
photo2 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dyyxiefx5/image/upload/v1507935097/codaisseurify/pink-floyd.jpg", artist: pink_floyd)
photo3 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dyyxiefx5/image/upload/v1507935113/codaisseurify/flightss.jpg", artist: foreign_fields)
photo4 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dyyxiefx5/image/upload/v1507935129/codaisseurify/darkside.jpg", artist: darkside)
photo5 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dyyxiefx5/image/upload/v1508028512/codaisseurify/5be86c72090e40728b39cba3c99d4689.jpg", artist: eddie_vedder)
photo6 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dyyxiefx5/image/upload/v1508028449/codaisseurify/Cigarettes-After-Sex-2017-cr-Ebru-Yildiz-billboard-1548.jpg", artist: cas)
photo7 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dyyxiefx5/image/upload/v1508028363/codaisseurify/red-hot-chili-peppers.jpg", artist: red_hot)
photo8 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dyyxiefx5/image/upload/v1508028353/codaisseurify/7e3d988cc01010a1c2539fb8815581e6.jpg", artist: nirvana)
photo9 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dyyxiefx5/image/upload/v1508028331/codaisseurify/AIR-2016-pic-2-2.jpg", artist: air)
photo10 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dyyxiefx5/image/upload/v1508028341/codaisseurify/91bdb5413b05cf8a5b001945ed179b09-671x377.jpg", artist: daughter)
photo11 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dyyxiefx5/image/upload/v1508028325/codaisseurify/rs-amy-winehouse-690d8165-2e21-4f61-8b25-0f787de5fff9.jpg", artist: amy)
