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
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq #removes all duplicate elements and retains all unique elements in the array
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    return_hash = {}
    @@genres.each do |i|
      #if hash has the key, increments associated value, else creates key and sets value to 1
      return_hash.has_key?(i) ? return_hash[i] += 1 : return_hash[i] = 1
    end
    return_hash
  end

  def self.artist_count
    return_hash = {}
    @@artists.each do |i|
      return_hash.has_key?(i) ? return_hash[i] += 1 : return_hash[i] = 1
    end
    return_hash
  end
end