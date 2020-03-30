# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Song.destroy_all
Artist.destroy_all

#artists
talking_heads = Artist.create(name: "Talking Heads")
prince = Artist.create(name: "Prince")
garbage = Artist.create(name: "Zac Brown Band")


#songs
talking_heads.songs.create(title: "And She Was",
                   length: 234,
                   play_count: 23)
talking_heads.songs.create(title: "Wild Wild Life",
                   length: 456,
                   play_count: 894)
prince.songs.create(title: "Raspberry Beret",
                   length: 340,
                   play_count: 434)
