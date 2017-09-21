class Song
  attr_reader :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre =genre
    @@count += 1
    @@artists << @artist
    @@genres << @genre
  end

  def self.count
     @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    g_hash = {}
#    @@genres.each do |g|
#      g_hash[g] = 0
#    end
#    @@genres.each do |g|
#      g_hash[g] = g_hash[g] + 1
#    end
#    g_hash
#               ^ cleaned up ugly but passing code.. also could use .has_key? and conditional statement to pass code
    @@genres.each do |key|
        g_hash[key] = g_hash.keys.count(key) + 1
    end
    g_hash
  end

  def self.artist_count
    a_hash = {}
    @@artists.each do |a|
      a_hash[a] = a_hash.keys.count(a) + 1
    end
    a_hash
  end

end
