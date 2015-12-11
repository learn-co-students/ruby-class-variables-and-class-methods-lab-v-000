class Song

  attr_reader :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}

  def initialize(track, artist, genre)
    @name = track
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist if !@@artists.include?(artist)
    @@genres << genre if !@@genres.include?(genre)
    @@genre_count[genre] ||= 0
    @@genre_count[genre] += 1 
    @@artist_count[artist] ||= 0
    @@artist_count[artist] += 1  
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists
  end

  def self.genres
    @@genres
  end

  def self.genre_count
    @@genre_count
  end

  def self.artist_count
    @@artist_count
  end

end

Song.new("99 Problems", "Jay-Z", "rap")
Song.new("XO", "Beyonce", "RnB")
Song.new("DooWop", "Lauryn Hill", "RnB")
puts Song.count
puts Song.genres
puts Song.genre_count
puts Song.artist_count