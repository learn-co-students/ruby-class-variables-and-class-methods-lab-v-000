class Song
attr_accessor :name, :artist, :genre
@@count = 0
@@artists = []
@@genres = []

def initialize(name, artist, genre)
  @@count += 1
  @name = name
  @artist = artist
  @genre = genre
  @@artists<<artist 
  @@genres<<genre 
end

def self.count
  @@count
end


def self.artists
  artist_array = []
 @@artists.each do |x|
  artist_array.push(x) unless artist_array.include?(x)
end
artist_array
end

def self.genres
   genre_array = []
 @@genres.each do |x|
  genre_array.push(x) unless genre_array.include?(x)
end
genre_array
end

def self.genre_count
 genre_hash = Hash.new 0
  @@genres.each do |x|
  genre_hash[x] += 1
end
genre_hash
end

def self.artist_count
 artist_hash = Hash.new 0
  @@artists.each do |x|
  artist_hash[x] += 1
end
artist_hash
end

end
