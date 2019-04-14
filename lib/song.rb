class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []
  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    @@artists << @artist
    @@genres << @genre
  end
  def name
    @name
  end
  def artist
    @artist
  end
  def genre
    @genre
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
    @@genres.each_with_object(Hash.new(0)) { |genre,counts| counts[genre] += 1 }
  end
  def self.artist_count
    @@artists.each_with_object(Hash.new(0)) { |artist,counts| counts[artist] += 1 }
  end
end
