class Song

  attr_accessor :name, :artist, :genre

  @@artists = []
  @@genres = []
  @@count = 0

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genres
    @@genres.uniq!
  end

  def self.genre_count
    @@genres.inject(Hash.new(0)) do |hash, key|
      hash[key] +=1
      hash
    end
  end

  def self.artist_count
    @@artists.inject(Hash.new(0)) do |hash, key|
      hash[key] +=1
      hash
    end
  end

end
