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
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    genres = []
    @@genres.each {|g| genres << g unless genres.include?(g)}
    genres
  end

  def self.artists
    artists = []
    @@artists.each {|a| artists << a unless artists.include?(a)}
    artists
  end

  def self.genre_count
    genre_count = {}
    @@genres.each do |g|
      if genre_count[g]
        genre_count[g] += 1
      else
        genre_count[g] = 1
    end
  end
    genre_count
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |a|
      if artist_count[a]
        artist_count[a] += 1
      else
        artist_count[a] = 1
    end
  end
    artist_count
  end

end
