class Song
  @@count = 0
  @@artists = []
  @@genres = []
  attr_accessor :name, :artist, :genre
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count = @@count + 1
    @@artists << artist
    @@genres << genre
  end
  def self.count
    @@count
  end
  def self.artists
    @artist_uniq = []
    @artist_uniq = @@artists.uniq
  end
  def self.genres
    @genre_uniq = []
    @genre_uniq = @@genres.uniq
  end
  def self.genre_count
    #need to look at each_with_object 
    @@genres.each_with_object(Hash.new(0)) do |key, hash|
      hash[key] += 1
    end
  end
  def self.artist_count
    @@artists.each_with_object(Hash.new(0)) do |key, hash|
      hash[key] += 1
    end
  end
end
