lana_del_rey = Artist.create!(name: "Lana del Rey", genre: "Baroque pop, dream pop, trip hop, indie pop")
darkside = Artist.create!(name: "Darkside", genre: "Electronica, experimental, downtempo, ambient")
pink_floyd = Artist.create!(name: "Pink Floyd", genre: "Progressive rock, art rock, psychedelic rock")
foreign_fields = Artist.create!(name: "Foreign Fields", genre: "Alternative, Indie")

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
