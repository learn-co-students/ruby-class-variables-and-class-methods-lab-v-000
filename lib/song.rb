class Song
  @@count = 0 # class variable for number of songs
  @@genres = [] # class variable for generes
  @@artists = [] # class variable for artists

  attr_reader :name, :artist, :genre
  #only need attr_reader because each song is initialized with those 3 attr

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1 # counts each song
    @@artists << artist # adds artist to the class variable array
    @@genres << genre # adds genre to the class variable array
  end

  def self.count
    @@count # number of songs in the class
  end

  def self.artists
    @@artists.uniq # lists artists without duplicates
  end

  def self.genres
    @@genres.uniq #lists genres without duplicates
  end

  def self.genre_count
    g_hash = {} # genre hash
    @@genres.each {|g| g_hash[g] = @@genres.count(g)}
    # the hash is: {genre => @@genres.count of genre}
    g_hash #displace the hash
  end

  def self.artist_count
    a_hash = {}
    @@artists.each {|a| a_hash[a] = @@artists.count(a)}
    a_hash
  end

end
