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
    clean_array = []
    @@genres.each do |genre|
      if !clean_array.include?(genre)
        clean_array << genre
      end
    end
    return clean_array
  end

  def self.artists
    artist_array = []
    @@artists.each do |artist|
      if !artist_array.include?(artist)
        artist_array << artist
      end
    end
    return artist_array
  end

  def self.genre_count
    genre_hash = {}
    @@genres.each do |genre|
      if !genre_hash.include?(genre)
      genre_hash[genre] = 0
      end
      genre_hash[genre] += 1
    end
    return genre_hash
  end

def self.artist_count
  artist_hash = {}
  @@artists.each do |artist|
    if !artist_hash.include?(artist)
      artist_hash[artist] = 0
    end
    artist_hash[artist] += 1
  end
  return artist_hash
end

end
