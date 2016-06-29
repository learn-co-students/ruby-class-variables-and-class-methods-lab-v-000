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
    if !@@artists.include?(artist)
      @@artists << artist
    end
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres
  end


end
