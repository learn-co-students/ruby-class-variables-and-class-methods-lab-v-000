class Song
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name,artist,genre)
      @name = name
      @artist = artist
      @genre = genre
      @@count += 1
      @@artists << artist
      @@genres << genre
  end

  def name
    @name
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
    genre_count = Hash[ *@@genres.collect { |v| [ v, @@genres.count(v) ] }.flatten ]
    genre_count
  end

  def self.artist_count
    artist_count = Hash[ *@@artists.collect { |v| [ v, @@artists.count(v) ] }.flatten ]
    artist_count
  end
  
end
