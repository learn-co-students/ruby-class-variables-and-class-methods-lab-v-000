class Song

  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @@artists << artist 
  @genre = genre
  @@genres << genre
  @@count+=1
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
    genre_counter = {}
    @@genres.each {|genre| genre_counter.has_key?(genre) ? genre_counter[genre] += 1 : genre_counter[genre] = 1}
    genre_counter
end

def self.artist_count
  artist_counter = {}
    @@artists.each {|artist| artist_counter.has_key?(artist) ? artist_counter[artist] += 1 : artist_counter[artist] = 1}
    artist_counter
end

end