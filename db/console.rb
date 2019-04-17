require("pry")
require_relative("../models/album")
require_relative("../models/artist")

Album.delete_all()
Artist.delete_all()

artist1 = Artist.new({'name' => 'Katy Perry'})
artist1.save()
artist2 = Artist.new({'name' => 'Dr. Dre'})
artist2.save()

album1 = Album.new({'title' => 'Witness', 'genre' => 'Pop', 'artist_id' => artist1.id})
album2 = Album.new({'title' => 'Guilty', 'genre' => 'Pop', 'artist_id' => artist1.id})

album1.save()
album2.save()

artist1.name = 'Snoop Dogg'


artist1.update()


album1.title = 'Jury'
album1.update()

p Artist.find_by_id(56)
p Album.find_by_id(75)
# artist2.delete()
# album2.delete()
# album1.delete()



# binding.pry
# nil
