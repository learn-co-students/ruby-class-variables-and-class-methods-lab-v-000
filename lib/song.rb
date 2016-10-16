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

  def self.genres
    @@genres = @@genres.uniq
  end

  def self.artists
    @@artists = @@artists.uniq
  end

  def self.genre_count
    aa = {}
    @@genres.each do |e|
      if aa.has_key?(e)
        aa[e] += 1
      else
        aa[e] = 1
      end
    end
    aa
  end

  def self.artist_count
    aa = {}
    @@artists.each do |e|
      if aa.has_key?(e)
        aa[e] += 1
      else
        aa[e] = 1
      end
    end
    aa
  end
end
