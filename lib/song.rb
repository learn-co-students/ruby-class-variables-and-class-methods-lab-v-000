
class Song
attr_accessor :name, :artist, :genre

   @@count = 0
   @@artists = []
   @@genres = []
   def initialize(name, artist, genre)
     @@count += 1
     @name = name
     @artist = artist
     @@artists << @artist
     @@artists
     @genre = genre
     @@genres << @genre
     @@genres
   end


   def self.count
     @@count
 end

 def self.genres
    @@genres.uniq
  end
def self.artists
     @@artists.uniq
    end

def self.genre_count

  genre_array = []
  genre_hash = Hash.new(0)

 genre_array << @@genres.each do |v|
   genre_hash[v] += 1
 end

genre_hash

   end

def self.artist_count
  artist_array = []
  artist_hash = Hash.new(0)

  artist_array << @@artists.each do |v|
    artist_hash[v] += 1
  end

  artist_hash

end


end
