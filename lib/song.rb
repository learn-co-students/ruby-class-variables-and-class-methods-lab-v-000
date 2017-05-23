class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist =  artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    x = []  
    @@genres.each do |g|
      if x.include?(g)
      true
      else
        x << g
      end
    end
    return x 
  end

  def self.artists
    x = []  
    @@artists.each do |g|
      if x.include?(g)
      true
      else
        x << g
      end
    end
    return x 
  end

  def self.genre_count
    x = {}
    @@genres.each do |g|
      if x.has_key?(g)
        x[g] += 1
      else
        x[g] = 1
      end
    end
    return x
  end

  def self.artist_count
    x = {}
    @@artists.each do |g|
      if x.has_key?(g)
        x[g] += 1
      else
        x[g] = 1
      end
    end
    return x
  end

  
end