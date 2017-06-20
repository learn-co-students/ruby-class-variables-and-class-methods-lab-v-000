#GOALS
#1 - create song class
#2 - each song has a name, genre, and artists
#3 - keep track of each song that is created (class variable)
#4 - generate list of the artists with songs (class array with unique values)
#5 - generate list of genres (class array with unique values)
#6 - generate hash with the number of songs per genre
#7 - generate hash with number of songs per artist

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

  def self.genre_count
    genre_histogram = {}
    @@genres.each do |k,v|
      genre_histogram.has_key?(k) ? genre_histogram[k] += 1 : genre_histogram[k] = 1
    end
    genre_histogram
  end

  def self.artist_count
    artist_histogram = {}
    @@artists.each do |k,v|
      artist_histogram.has_key?(k) ? artist_histogram[k] += 1 : artist_histogram[k] = 1
    end
    artist_histogram
  end


  def self.genres
    genres_unique = []
    @@genres.each {|g| genres_unique << g if !genres_unique.include?(g)}
    genres_unique
  end

  def self.artists
    artists_unique = []
    @@artists.each {|a| artists_unique << a if !artists_unique.include?(a)}
    artists_unique
  end

end
