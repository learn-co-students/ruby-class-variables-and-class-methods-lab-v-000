class Song
  attr_accessor :name, :count, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize (name, artist, genre)
   @@count += 1
   @@genres << genre
   @@artists << artist
   @name = name
   @artist = artist
   @genre = genre
 end

 def self.count
  @@count
 end

 def self.genres
   @@genres.uniq!
 end

 def self.artists
   @@artists.uniq!
 end

 def self.genre_count
   genres.count do |key, value|
    genres[key]=value
  end
 end

 def self.artist_count

   artists.each do |k,x|
     k.count(x)
   end
 end
end
