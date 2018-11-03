# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
# Genre.all.each do |genre|
#   genre.destroy
# end
#
# Artist.all.each do |artist|
#   artist.destroy
# end
#
# Song.all.each do |song|
#   song.destroy
# end

# `rake db:drop
# rake db:migrate
# rake db:seed`

10.times do
  Genre.create({name: Faker::Music.genre})
  Artist.create({name: Faker::Music.band, bio: Faker::ChuckNorris.fact })
  Song.create({name: Faker::Music.album, artist_id: Faker::Number.number(1), genre_id: Faker::Number.number(1)})
end
