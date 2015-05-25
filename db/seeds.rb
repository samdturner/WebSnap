# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

new_album = Album.create!(name: "New Album", delete_time: Time.new(2000))

Photo.create!(url: 'http://i.imgur.com/yH62KXc.jpg?1',
              delete_time: Time.new(2002),
              album_id: new_album.id)
