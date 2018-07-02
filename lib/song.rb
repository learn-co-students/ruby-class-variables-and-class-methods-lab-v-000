class Song
  attr_accessor :name, :artist, :genre
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << @artist
    @@genres << @genre
  end

  @@count = 0
  @@artists = []
  @@genres = []

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
    new_hash = {}
    @@genres.each do |genre|
      if new_hash[genre]
        new_hash[genre] += 1
      else
        new_hash[genre] = 1
      end
    end
    new_hash
  end
  def self.artist_count
    newer_hash = {}
    @@artists.each do |artist|
      if newer_hash[artist]
        newer_hash[artist] += 1
      else
        newer_hash[artist] = 1
      end
    end
    newer_hash
  end


end
