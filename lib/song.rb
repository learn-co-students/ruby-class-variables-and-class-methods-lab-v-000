class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

#takes in three arguments: name, artist and genre
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
#@@artists, that contains all of the artists of existing songs
    @@artists << artist
#@@genres, that contains all of the genres of existing songs
    @@genres << genre
  end

#class method that returns that number of songs created
  def self.count
    @@count
  end

#class method that returns a unique array of genres of existing songs
  def self.genres
    @@genres.uniq
  end
#method that returns that number of songs created
  def self.artists
    @@artists.uniq
  end

#class method that returns a hash of genres and the number of songs that have those genres
  def self.genre_count
    counts = Hash.new 0
    @@genres.each do |genre|
      counts[genre] += 1
    end
    counts
  end

#class method that returns a hash of artists and the number of songs that have those artists
  def self.artist_count
    counts = Hash.new 0
    @@artists.each do |artist|
      counts[artist] += 1
    end
    counts
  end
end
