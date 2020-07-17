class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize (name, artist, genre)
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
    unique_array = []
    @@genres.each do |genre|
      if !unique_array.include? (genre)
        unique_array << genre
      end
    end
    unique_array
  end

  def self.artists
    unique_array = []
    @@artists.each do |artist|
      if !unique_array.include? (artist)
        unique_array << artist
      end
    end
    unique_array
  end

  def self.genre_count
    genre_hash = {}
    @@genres.each do |genre|
      if !genre_hash.keys.include? (genre)
        genre_hash[genre] = 1
      else
        genre_hash[genre] += 1
      end
    end
    genre_hash
  end

  def self.artist_count
    artist_hash = {}
    @@artists.each do |artist|
      if !artist_hash.keys.include? (artist)
        artist_hash[artist] = 1
      else
        artist_hash[artist] += 1
      end
    end
    artist_hash
  end

end
