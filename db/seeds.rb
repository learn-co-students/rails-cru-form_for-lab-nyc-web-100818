# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

a1 = Artist.create(name: "Adele", bio: "She grew up in london...")
a2 = Artist.create(name: "Aaron Stinkerman", bio: "he started playing the fiddle at three...")


g1 = Genre.create(name: "pop")
g2 = Genre.create(name: "country")


s1 = Song.create(name: "Shartlets")
s2 = Song.create(name: "Hello")
