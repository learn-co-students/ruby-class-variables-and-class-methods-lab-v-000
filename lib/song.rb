class Song

  attr_reader :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @@count += 1
    @genre = genre
    @artist = artist
    @name = name  
    @@genres << genre
    @@artists << artist
  end
  
  def self.count
    return @@count
  end

  def self.genres
    @@genres.uniq!
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genre_count
   gcount = {}
    @@genres.uniq.each do |ug|
      gcount[ug] = 0
    end
    @@genres.each do |g|
      gcount[g] += 1
    end
    gcount
  end

  def self.artist_count
    acount = {}
    @@artists.uniq.each do |ua|
        acount[ua] = 0
    end
    @@artists.each do |a|
      acount[a] += 1
    end
    acount
  end
  
end