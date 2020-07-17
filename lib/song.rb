class Song
  @@count = 0
  @@genres = []
  @@artists = []
  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    genres = @@genres.uniq
    genres
  end

  def self.artists
    artists = @@artists.uniq
    artists
  end
  #create key with genre
  #create value with a count
  #increment count for ever repeat
  def self.genre_count
    genre_hash = {}
    @@genres.each do |genre|
      if genre_hash.has_key?(genre)
        genre_hash[genre] += 1
      else
        genre_hash[genre] = 1
      end
    end
    return genre_hash
  end

  def self.artist_count
    artist_hash = {}
    @@artists.each do |artist|
      if artist_hash.has_key?(artist)
        artist_hash[artist] += 1
      else
        artist_hash[artist] = 1
      end
    end
    return artist_hash
  end

end