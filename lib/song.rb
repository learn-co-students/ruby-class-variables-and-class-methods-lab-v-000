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
  @@artists << artist
  @@genres << genre
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
  genre_list = {}
  @@genres.each do |genre_names|
    genre_list[genre_names] = 0
    counter += 1
  end
end

def self.artist_count
  artist_list = {}
  @@artists.each do |artist_names|
    artist_list[artist_names] = 0
    counter += 1
  end
end

end
