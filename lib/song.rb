class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []


  def initialize(name, artist, genre)
    @@count += 1
    @@genres << genre
    @@artists << artist
    @name = name
    @artist = artist
    @genre = genre
  end

  def self.count
    @@count
  end

  def self.artists
    new_array = []
    @@artists.each do |artist|
      if new_array.include?(artist) == false
        new_array << artist
      end
    end
    new_array
  end

  def self.genres
    new_array = []
    @@genres.each do |genre|
      if new_array.include?(genre) == false
        new_array << genre
      end
    end
    new_array
  end

  def self.genre_count
    genres_hash = {}
    @@genres.each do |genre|
      if genres_hash.key?(genre) == true
        genres_hash[genre] += 1
      else
        genres_hash[genre] = 1
      end
    end
    genres_hash
  end

  def self.artist_count
    artist_hash = {}
    @@artists.each do |artist|
      if artist_hash.key?(artist) == true
        artist_hash[artist] += 1
      else
        artist_hash[artist] = 1
      end
    end
    artist_hash
  end

end
