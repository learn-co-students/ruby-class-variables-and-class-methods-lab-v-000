class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  

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

  @@genres = []

  def self.genres
    ary = @@genres.uniq
  end
  
  @@artists = []

  def self.artists
    ary = @@artists.uniq
  end

  def self.genre_count
    histogram = Hash.new
    @@genres.each do |genre|
      histogram[genre] = @@genres.count(genre.to_s)
    end
    histogram
  end

  def self.artist_count
    histogram = Hash.new
    @@artists.each do |artist|
      histogram[artist] = @@artists.count(artist.to_s)
    end
    histogram
  end
end






