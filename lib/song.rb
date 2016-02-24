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
  frequencies = Hash.new(0)
  @@genres.each do |genre|
    frequencies[genre] += 1
  end
  frequencies
end

  def self.artist_count
    artists_frequency = Hash.new(0)
  @@artists.each do |artist|
    artists_frequency[artist] += 1
  end
  artists_frequency
  end

end