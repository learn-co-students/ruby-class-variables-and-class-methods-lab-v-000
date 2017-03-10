class Song
  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << @artist
    @@genres << @genre
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
    frequencies = Hash.new 0
    @@genres.each {|word| frequencies[word] += 1}
    @@genres.uniq.each {|word| puts "#{word} => #{frequencies[word]}"}
    frequencies
  end

  def self.artist_count
    frequencies = Hash.new 0
    @@artists.each {|word| frequencies[word] += 1}
    @@artists.uniq.each {|word| puts "#{word} => #{frequencies[word]}"}
    frequencies
  end

end
