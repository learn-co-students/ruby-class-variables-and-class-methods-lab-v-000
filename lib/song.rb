class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artitst = []
  @@genres = []


  def initialize
    @@count += 1
    @name = name
    @genre = genre
    @artist = artist
    @@genres << @genre
    @@artists << @artist
  end

  def self.count
    @@count
  end


  def self.genre
   @@genres.unique
  end

  def self.artist
    @@artist.unique
  end

  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      count = @@genres.count(genre)
      genre_count[genre] = count
    end
    genre_count
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do  |artist|
      count = @@artists.count(artist)
      artist_count[artist] = count
    end
    artist_count
  end
end
