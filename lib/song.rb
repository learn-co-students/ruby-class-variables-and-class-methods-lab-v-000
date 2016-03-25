class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@genres << genre
    @@artists << artist

    @@count +=1
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
    gcount = {}
    @@genres.each do |g|
      if gcount.include?(g)
        gcount[g] +=1
        else
        gcount[g] = 1
      end
    end
    gcount
  end

  def self.artist_count
    acount = {}
    @@artists.each do |a|
      if acount.include?(a)
        acount[a] +=1
        else
        acount[a] = 1
      end
    end
    acount
  end
end
