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
    @@genres.push(genre)
    @@artists.push(artist)
  end

  def self.count
    @@count
  end

  def self.genres
    @@unique_genres = []
    @@genres.each do |genre|
      if @@unique_genres.include?(genre) == false
        @@unique_genres.push(genre)
      end
    end
    return @@unique_genres
  end

  def self.artists
    @@unique_artists = []
    @@artists.each do |artist|
      if @@unique_artists.include?(artist) == false
        @@unique_artists.push(artist)
      end
    end
    return @@unique_artists
  end

  def self.genre_count
    genre_hash = {}
    @@genres.each do |genre|
      i = 1
      if genre_hash.has_key?(genre) == false
        genre_hash[genre] = i
      else
        genre_hash[genre] = i+1
      end
    end
    return genre_hash
  end

  def self.artist_count
    artist_hash = {}
    @@artists.each do |artist|
      i = 1
      if artist_hash.has_key?(artist) == false
        artist_hash[artist] = i
      else
        artist_hash[artist] = i+1
      end
    end
    return artist_hash
  end

end
