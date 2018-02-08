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
    genre_array = []
    @@genres.each do |genre|
      if genre_array.include?(genre) == false
        genre_array << genre
      end
    end
    genre_array
  end

  def self.artists
    artist_array = []
    @@artists.each do |artist|
      if artist_array.include?(artist) == false
        artist_array << artist
      end
    end
    artist_array
  end

  def self.genre_count
    count_hash = {}
    @@genres.each do |genre|
      if count_hash.keys.include?(genre)
        count_hash[genre] += 1
      else
        count_hash[genre] = 1
      end
    end
    count_hash
  end

  def self.artist_count
    count_hash = {}
    @@artists.each do |artist|
      if count_hash.keys.include?(artist)
        count_hash[artist] += 1
      else
        count_hash[artist] = 1
      end
    end
    count_hash
  end

end
