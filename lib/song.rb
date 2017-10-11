class Song
  attr_accessor :name, :genre, :artist


  @@count = 0

  @@genres = []

  @@artists = []

  def initialize(name, artist, genre)
  @@count += 1
  @@genres << genre
  @@artists << artist
  @name = name
  @artist = artist
  @genre = genre
  end

  def self.count
    @@count
  end

  def self.artists
    unique = []
    @@artists.each do |i|
      if(!unique.include?(i))
        unique << i
      end
    end
    unique
  end

  def self.genres
    unique = []
    @@genres.each do |i|
      if(!unique.include?(i))
        unique << i
      end
    end
    unique
  end

  def self.genre_count
    unique = []
    hash = {}
    @@genres.each do |i|
      if(!unique.include?(i))
        unique << i
        hash[i] = @@genres.count(i)
      end
    end
    hash
  end

  def self.artist_count
    unique = []
    hash = {}
    @@artists.each do |a|
      if(!unique.include?(a))
        unique << a
        hash[a] = @@artists.count(a)
      end
    end
    hash
  end

end
