class Song
  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre

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
    return @@genres.uniq
  end

  def self.artists
    return @@artists.uniq
  end

  def self.genre_count
    count = {}
    @@genres.each do |genre|
      if count.key?(genre)
        count[genre] += 1
      else
        count[genre] = 1
      end
    end
    return count
  end

  def self.artist_count
    count = {}
    @@artists.each do |artist|
      if count.key?(artist)
        count[artist] += 1
      else
        count[artist] = 1
      end
    end
    return count
  end
end
