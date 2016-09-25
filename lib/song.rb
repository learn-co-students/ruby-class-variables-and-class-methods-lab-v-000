class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << @artist
    @@genres << @genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists_unique_array = []
    @@artists.each do |artist|
      if @@artists_unique_array.include?(artist) == false
        @@artists_unique_array << artist
      end
    end
    @@artists_unique_array
  end

  def self.genres
    @@genres_unique_array = []
    @@genres.each do |genre|
      if @@genres_unique_array.include?(genre) == false
        @@genres_unique_array << genre
      end
    end
    @@genres_unique_array
  end

  def self.genre_count
    @@genre_count = {}
    @@genres_unique_array.each do |genre|
      @@genre_count[genre] = @@genres.count(genre)
    end
    @@genre_count
  end

  def self.artist_count
    @@artist_count = {}
    @@artists_unique_array.each do |artist|
      @@artist_count[artist] = @@artists.count(artist)
    end
    @@artist_count
  end
end
