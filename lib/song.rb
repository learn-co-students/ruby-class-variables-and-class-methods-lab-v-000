class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name; @artist = artist; @genre = genre
    @@count += 1; @@genres << genre; @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    hist = {}
    @@genres.each do |genre|
      if hist[genre]
        hist[genre] += 1
      else
        hist[genre] = 1
      end  
    end
    hist
  end

  def self.artist_count
    hist = {}
    @@artists.each do |artist|
      if hist[artist]
        hist[artist] += 1
      else
        hist[artist] = 1
      end  
    end
    hist
  end
end