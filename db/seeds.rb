# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

20.times do
  Artist.create(name: Faker::Music.unique.band)
end

10.times do
  Genre.create(name: Faker::Music.unique.genre)
end

20.times do
  song = Song.create(name: Faker::Music.unique.album)
  Artist.all.sample.songs << song
  Genre.all.sample.songs << song
end
