class Song

@@count = 0
@@genres = []
@@artists = []

attr_accessor :name, :artist, :genre

def initialize(name, artist, genre)
  @@count += 1
  @name = name
  @artist = artist
  @genre = genre
  @@genres << genre
  @@artists << artist
end

def self.count
  @@count
end

def self.genres
  individual_genres = []
  @@genres.each do |genre|
    individual_genres << genre unless individual_genres.include?(genre)
  end
  individual_genres
end

def self.artists
  individual_artists = []
  @@artists.each do |artist|
    individual_artists << artist unless individual_artists.include?(artist)
  end
  individual_artists
end

def self.genre_count
  the_genres = {}
  @@genres.each do |genre|
    the_genres.has_key?(genre) ? the_genres[genre] += 1 : the_genres[genre] = 1
  end
  the_genres
end

def self.artist_count
  the_artists = {}
  @@artists.each do |artist|
    the_artists.has_key?(artist) ? the_artists[artist] += 1 : the_artists[artist] = 1
  end
  the_artists
end

end
