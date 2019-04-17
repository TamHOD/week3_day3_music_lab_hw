require("pry")
require_relative("../models/album")
require_relative("../models/artist")

Album.delete_all()
Artist.delete_all()

artist1 = Artist.new({'name' => 'Katy Perry'})
artist1.save()

album1 = Album.new({'title' => 'Witness', 'genre' => 'Pop', 'artist_id' => artist1.id})
album2 = Album.new({'title' => 'Guilty', 'genre' => 'Pop', 'artist_id' => artist1.id})

album1.save()
album2.save()

binding.pry
nil
