# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Song.delete_all
Artist.delete_all
Genre.delete_all

a1 = Artist.create(name: "lil purp", bio: "He's little and like purple")
g1 = Genre.create(name: "Mumble Trash")
Song.create(artist_id: a1.id, genre_id: g1.id, name: "Skateboard P")