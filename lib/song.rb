class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name,artist,genre)
    @artist = artist
    @name = name
    @genre = genre
    @@genres << @genre
    @@artists << @artist
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.to_set
  end

  def self.artists
    @@artists.to_set
  end

  def self.genre_count
    count = Hash.new{}
    @@genres.each do |val| count[val] = @@genres.count(val)
    end
    count
  end

  def self.artist_count
    count = Hash.new{}
    @@artists.each do |val| count[val] = @@artists.count(val)
    end
    count
  end

end