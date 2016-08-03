class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  
  @@genres = []

  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist

  
  end

  def self.count
    @@count
  end

  def self.genres    #lines below are incorrect
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    histogram = Hash.new
    @@genres.each do |genre|
      histogram[genre] = @@genres.count(genre.to_s)
    end
    histogram
  end

  def self.artist_count
    histogram=Hash.new
    @@artists.each do |artist|
      histogram[artist] = @@artists.count(artist.to_s)
    end
    histogram
  end

end