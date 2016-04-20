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
    # that returns an array of all of the genres of existing songs.
    @@genres.uniq
  end

  def self.artists
    #returns an array of all of the artists of the existing songs. This array should only contain unique artists
    @@artists.uniq
  end

  def self.genre_count
    # => {"rap" => 5, "rock" => 1, "country" => 3}
    hash = {}
    @@genres.uniq.each do |i|
      hash[i] = @@genres.count(i)
    end
    hash
  end

  def self.artist_count
    # returns a histogram similar to the one above
    hash = {}
    @@artists.uniq.each do |i|
      hash[i] = @@artists.count(i)
    end
    hash
  end


end

# @@genres.group_by { |i| i }.each { |k, v| k => v.count }
