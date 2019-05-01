class Song
attr_accessor :name, :artist, :genre
@@count = 0
@@artists = []
@@genres = []

 def initialize(name, artist, genre)
   @name, @artist, @genre = name, artist, genre
   @@count += 1
   @@artists << @artist
   @@genres << @genre
 end

 def self.count
   @@count
 end

 def self.artists
   @@artists.uniq
 end

 def self.genres
   @@genres.uniq
 end

 def self.genre_count
   result = {}
   @@genres.each do |genre|
     result[genre] = @@genres.count(genre)
   end
   result
 end

 def self.artist_count
   result = {}
   @@artists.each do |artist|
     result[artist] = @@artists.count(artist)
   end
   result
 end
end
