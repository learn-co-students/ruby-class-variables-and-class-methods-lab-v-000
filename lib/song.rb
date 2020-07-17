class Song
  attr_accessor(:artist, :genre, :name)

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre

    @@artists << @artist
    @@genres << @genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists = @@artists.uniq
  end

  def self.genres
    @@genres = @@genres.uniq
  end

  def self.genre_count
    genre = {}

    @@genres.each do |key, value|
      value = 1
      if genre.has_key?("#{key}") == false
        genre["#{key}"] = value
      else
        genre["#{key}"] = value + 1
      end
    end
    return genre
  end

  def self.artist_count
    artists = {}

    @@artists.each do |key, value|
      value = 1
      if artists.has_key?("#{key}") == false
        artists["#{key}"] = value
      else
        artists["#{key}"] = value + 1
      end
    end
    return artists
  end
end
