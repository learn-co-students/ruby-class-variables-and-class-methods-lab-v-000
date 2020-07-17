class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

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
    unique_genres = []
    @@genres.each do |genre|
      if unique_genres.include?(genre) != true
        unique_genres << genre
      end
    end
    unique_genres
  end

  def self.artists
    unique_artists = []
    @@artists.each do |artist|
      if unique_artists.include?(artist) != true
        unique_artists << artist
      end
    end
    unique_artists
  end

  def self.genre_count
    genre_hash = {}
    count = 1
    @@genres.each do |genre|
      if genre_hash.include?(genre) == false
        genre_hash[genre] = count
      else
        genre_hash[genre] +=1
      end
    end
    genre_hash
  end

  def self.artist_count
    artist_hash = {}
    count = 1
    @@artists.each do |artist|
      if artist_hash.include?(artist) == false
        artist_hash[artist] = count
      else
        artist_hash[artist] +=1
      end
    end
    artist_hash
  end
end
