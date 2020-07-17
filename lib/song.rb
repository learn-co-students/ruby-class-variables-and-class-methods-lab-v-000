class Song

@@count = 0
@@artists = []
@@genres = []

  def initialize(name,artist,genre)
    @@count += 1
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
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

  def self.artists
    @@artists_uniq = @@artists.uniq
  end

  def self.genres
    @@genres_uniq = @@genres.uniq
  end

  def self.genre_count
    hash = {}
    for i in @@genres_uniq
    hash[i] = @@genres.count(i)
    end
    hash
  end

  def self.artist_count
    hash = {}
    for i in @@artists_uniq
    hash[i] = @@artists.count(i)
    end
    hash
  end

end
