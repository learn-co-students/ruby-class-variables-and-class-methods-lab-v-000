class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << @genre
    @@artists << @artist
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
    #returns a hash with keys as genre names, values as number of songs in that genre
    genre_hash = {}
    # if our uniq array had ['pop', 'rock', 'jazz', 'classical']
    # {
    #   pop: 10,
    #   rock: 2,
    #   jazz: 30,
    #   classical: 15
    # }
    self.genres.each do |genre|
      genre_hash[genre] = @@genres.count{|g| g == genre}
    end
    genre_hash
  end

  def self.artist_count
    # same as above method, but for artists (histogram)
    artist_hash = {}
    self.artists.each do |artist|
      artist_hash[artist] = @@artists.count{|a| a == artist}
    end
    artist_hash
  end
end
