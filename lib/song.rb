class Song
  attr_accessor(:name, :artist, :genre)
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    #@@artists.include?(artist) ? nil :
    @@artists << artist
    #@@genres.include?(genre) ? nil :
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    # return_array = []
    # @@artists.each do |value|
    #   return_array.include?(value) ? nil : return_array << value
    # end
    # return_array
    @@artists.uniq
  end

  def self.genres
    # return_array = []
    # @@genres.each do |value|
    #   return_array.include?(value) ? nil : return_array << value
    # end
    # return_array
    @@genres.uniq
  end

  def self.genre_count
    return_hash = {}
    @@genres.each do |value|
      return_hash.include?(value) ? return_hash[value] += 1 : return_hash[value] = 1
    end
    return_hash
  end

  def self.artist_count
    return_hash = {}
    @@artists.each do |value|
      return_hash.include?(value) ? return_hash[value] += 1 : return_hash[value] = 1
    end
    return_hash
  end


end
