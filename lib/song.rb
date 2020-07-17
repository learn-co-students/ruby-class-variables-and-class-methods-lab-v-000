class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << @artist
    @genre = genre
    @@genres << @genre
    @@count+=1
  end

  def self.count
    return @@count
  end

  def self.genres
    return @@genres.uniq
  end
  def self.artists
    return @@artists.uniq
  end
  def self.genre_count
    counts = Hash.new(0)

    @@genres.each do |genre|
      counts[genre] += 1

    end
    return counts

  end
  def self.artist_count
    counts = Hash.new(0)

    @@artists.each do |artist|
      counts[artist] += 1
    end
    return counts

  end
end
