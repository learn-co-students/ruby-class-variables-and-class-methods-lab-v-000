class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre  = genre

    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end
  def self.artists
    @@artists.uniq
  end
  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_hash = {}
    @@genres.each do |item|
      genre_hash[item] = (genre_hash[item] || 0) +1
    end
    genre_hash
  end

  def self.artist_count
    @@artists.each_with_object(Hash.new(0)) do |artist, hash|
      hash[artist] +=1
    end
  end


end
