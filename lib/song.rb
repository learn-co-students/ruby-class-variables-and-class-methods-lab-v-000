class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

 def initialize(name, artist, genre)
   @name = name
   @artist = artist
   @genre = genre
   @@count +=1
   @@genres << genre
   @@artists << artist
 end

 def self.count
   return @@count
 end

 def self.artists
   return @@artists.uniq
 end

 def self.genres
   return @@genres.uniq
 end

 def self.genre_count
   g_count = {}
   @@genres.each do |genre|
     if g_count[genre]
       g_count[genre] += 1
     else
       g_count[genre] = 1
     end
   end
   g_count
 end

 def self.artist_count
   a_count = {}
   @@artists.each do |artist|
     if a_count[artist]
       a_count[artist] += 1
     else
       a_count[artist] = 1
     end
   end
   a_count

 end

end
