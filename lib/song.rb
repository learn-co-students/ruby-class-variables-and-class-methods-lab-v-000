class Song

  attr_reader :name, :artist, :genre, :count

def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @@artists << artist
  @genre = genre
  @@genres << genre
  @@count += 1
end

@@count = 0
@@genres = []
@@artists = []

def self.count
  @@count
end

def self.artists
  @@artists.uniq
end

def self.artist_count
#how many songs each artist created
artist_count = {}
@@artists.each do |artist|
artist_count[artist] = @@artists.count(artist)
end
artist_count
end


def self.genres
  @@genres.uniq
end

def self.genre_count
  #how many songs in each genre
  genre_count = {}
  @@genres.each do |genre|
  genre_count[genre] = @@genres.count(genre)
end
genre_count
end


end
