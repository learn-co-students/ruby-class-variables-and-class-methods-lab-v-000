class Song

  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @artist = artist
    @name = name
    @genre = genre
    @@artists << @artist
    @@genres << @genre
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genres
    @@genres.uniq!
  end

  def self.genre_count
    @@genres.each_with_object(Hash.new(0)) { |count, genre| genre[count] += 1 }
  end

  def self.artist_count
    @@artists.each_with_object(Hash.new(0)) { |count, artist| artist[count] += 1 }
  end
  
end
