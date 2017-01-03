class Song

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists.push(@artist)
    @@genres.push(@genre)
  end

  attr_accessor :name, :artist, :genre

  def self.count
    @@count
  end

  def self.artists
    artist_array = []
    @@artists.each do |artist|
      if artist_array.include?(artist) == false
        artist_array.push(artist)
      end
    end
    artist_array
  end

  def self.genres
    genre_array = []
    @@genres.each do |genre|
      if genre_array.include?(genre) == false
        genre_array.push(genre)
      end
    end
    genre_array
  end

  def self.genre_count
    genre_count_hash = {}
    genre_count = 0
    @@genres.each do |genre|
      if genre_count_hash.include?(genre) == true
        genre_count += 1
      else
        genre_count = 1
      end
      genre_count_hash[genre] = genre_count
    end
    genre_count_hash
  end

  def self.artist_count
    artist_count_hash = {}
    artist_count = 0
    @@artists.each do |artist|
      if artist_count_hash.include?(artist) == true
        artist_count += 1
      else
        artist_count = 1
      end
      artist_count_hash[artist] = artist_count
    end
    artist_count_hash
  end
  
end
