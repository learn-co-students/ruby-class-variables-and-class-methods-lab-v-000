class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []
  def initialize(name, artist, genre)
    @name=name
    @artist=artist
    @genre=genre
    @@count +=1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    unigenre = []
    @@genres.each do |g|
      unless unigenre.include?(g)
        unigenre << g
      end
    end
    unigenre
  end

  def self.artists
    uniart = []
    @@artists.each do |g|
      unless uniart.include?(g)
        uniart << g
      end
    end
    uniart
  end

  def self.genre_count
    hash1={}
    @@genres.each do |genre|
      if hash1.has_key?(genre)
        hash1[genre] +=1
      else
        hash1[genre] = 1
      end
    end
    hash1
  end

  def self.artist_count
    hash2={}
    @@artists.each do |art|
      if hash2.has_key?(art)
        hash2[art] +=1
      else
        hash2[art] = 1
      end
    end
    hash2
  end




end
