class Song
  @@count = 0
  attr_reader :artist, :genre, :name

  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @@count += 1
    @artist = artist
    @@artists << @artist
    @genre = genre
    @@genres << @genre
    @name = name
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
    hash = {}
    @@genres.each do |genre|
      if hash[genre] == nil
        hash[genre] = 1
      else
        hash[genre] = hash.fetch(genre) + 1
      end
    end
    hash
  end

  def self.artist_count
    hash = {}
    @@artists.each do |artist|
      if hash[artist] == nil
        hash[artist] = 1
      else
        hash[artist] = hash.fetch(artist) + 1
      end
    end
    hash
  end

end
