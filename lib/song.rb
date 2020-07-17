class Song

  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor(:name, :artist, :genre)

  def initialize(name, artist, genre)
    @@count += 1
    @artist = artist
    @@artists << @artist
    @name = name
    @genre = genre
    @@genres << @genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists = @@artists.uniq!
    @@artists
  end

  def self.genres
    @@genres = @@genres.uniq!
    @@genres
  end

  def self.genre_count
    genres_hash = {}
    @@genres.each do |genre|
      if genres_hash[genre]
        genres_hash[genre] += 1
      else
        genres_hash[genre] = 1
      end
    end
    genres_hash
  end

  def self.artist_count
    artist_hash = {}
    @@artists.each do |genre|
      if artist_hash[genre]
        artist_hash[genre] += 1
      else
        artist_hash[genre] = 1
      end
    end
    artist_hash
  end


end
