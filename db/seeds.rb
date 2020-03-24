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
carly_rae = Artist.create(name: "Carly Rae")
billie_eilish = Artist.create(name: "Billie Eilish")
journey = Artist.create(name: "Journey")


#songs
carly_rae.songs.create(title: "I Really Like You",
                   length: 200,
                   play_count: 3000)
carly_rae.songs.create(title: "Call Me Maybe",
                   length: 100,
                   play_count: 1000)
billie_eilish.songs.create(title: "Bad Guy",
                   length: 300,
                   play_count: 2000)
billie_eilish.songs.create(title: "Bury A Friend",
                     length: 250,
                     play_count: 1500)
journey.songs.create(title: "Don't Stop Believin'",
                     length: 300,
                     play_count: 3000000)
