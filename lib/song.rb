class Song

  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = Array.new
  @@genres = Array.new

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    return @@count
  end

  def self.artists
    return @@artists.uniq
  end

  def self.genres
    return @@genres.uniq
  end

  def self.genre_count
    hash = Hash.new
    @@genres.each do |v|
      if !hash[v].is_a? Numeric
        hash[v] = 1
      else
        hash[v] += 1
      end
    end
    return hash
  end

  def self.artist_count
    hash = Hash.new
    @@artists.each do |v|
      if !hash[v].is_a? Numeric
        hash[v] = 1
      else
        hash[v] += 1
      end
    end
    return hash
  end

end
