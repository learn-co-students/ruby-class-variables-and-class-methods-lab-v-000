class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @genre = genre
    @artist = artist
    @@count += 1
    @@genres << genre
    @@artists << artist
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
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    @@genre
  end

  def self.genre_count
    gcount = Hash.new
    @@genres.each do |genre|
      if gcount[genre] == nil
        gcount[genre] = 1
      else 
        gcount[genre] += 1
      end
    end
    gcount
  end

  def self.artist_count
    acount = Hash.new
    @@artists.each do |artist|
      if acount[artist] == nil
        acount[artist] = 1
      else 
        acount[artist] += 1
      end
    end
    acount
  end
  
end