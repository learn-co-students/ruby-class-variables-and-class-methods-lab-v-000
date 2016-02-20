require_relative 'lib/song'


steve = Song.new("digit", "perry", "easy")
puts steve.name + steve.artist + steve.genre
puts Song.count


yolanda = Song.new("badger", "como", "rock")
jimmy = Song.new("world scope", "rockers", "punk")
justin = Song.new("policy honesty", "smashers", "punk")

puts yolanda.genre
puts jimmy.name
puts Song.count
puts Song.genres
puts Song.artists
puts Song.genre_count
puts Song.artist_count
