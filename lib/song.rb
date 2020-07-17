class Song

attr_accessor :name, :artist, :genre
@@count = 0
@@artists = []
@@genres = []

def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@count += 1
  @@genres << genre
  @@artists << artist
end

def self.count
  @@count
end

def self.genres
  @@genres & @@genres  #& takes interesection of array
end

def self.artists
  @@artists & @@artists  #& takes interesection of array
end

def self.genre_count
  genre_count = Hash[@@genres.collect {
    |g| [g, @@genres.count(g)] }]
end

def self.artist_count
  genre_count = Hash[@@artists.collect {
    |a| [a, @@artists.count(a)] }]  
end

end
