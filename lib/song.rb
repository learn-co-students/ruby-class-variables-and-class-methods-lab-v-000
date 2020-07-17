class Song

attr_accessor :name, :artist, :genre

def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@count += 1
  @@artists << @artist
  @@genres << @genre
end

@@count = 0

@@artists = []

@@genres = []

def self.artists
  unique_artists = []
  @@artists.each do |artist|
      if unique_artists.any? { |unique| artist == unique } == false
       unique_artists << artist
      end
  end
  return unique_artists
end

def self.genres
  unique_genres = []
  @@genres.each do |genre|
      if unique_genres.any? { |unique| genre == unique } == false
       unique_genres << genre
      end
  end
  return unique_genres
end

def self.count
  @@count
end

def self.genre_count
  genre_hash = Hash.new(0)

  @@genres.each do |genre|
    genre_hash[genre] += 1
  end
   genre_hash
end

def self.artist_count
    artist_hash = Hash.new(0)

  @@artists.each do |artist|
    artist_hash[artist] += 1
  end
   artist_hash
end

end
