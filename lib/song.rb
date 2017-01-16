class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []
  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist

  end

  def self.count
    # => 30
    @@count
  end
  def self.artists
    # => ["Jay-Z", "Drake", "Beyonce"]
    @@artists.uniq
  end
  def self.genres
    # => ["Rap", "Pop"]
    @@genres.uniq
  end
  def self.genre_count
    # => {"rap" => 5, "rock" => 1, "country" => 3}
    genres = {}
    @@genres.each {|k| genres.key?(k) ? genres[k] += 1 : genres[k] = 1 }
    genres

  end
  def self.artist_count
    # => {"Beyonce" => 17, "Jay-Z" => 40}
    artists = {}
    @@artists.each {|k| artists.key?(k) ? artists[k] += 1 : artists[k] = 1 }
    artists
  end

end
