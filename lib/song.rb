class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist # Does it matter if this is @artist or not?
    @@artists << artist
    @genre = genre # Does it matter if this is @genre or not?
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    new_artists = @@artists.uniq
  end

  def self.genres
    new_genres = @@genres.uniq
  end

  def self.genre_count
    genre_count = {} # Hash needed to be created inside the class method
    @@genres.each {|x| genre_count[x] ||= 0; genre_count[x] += 1} # Needed to initialize value at 0 first before iterating +1 
    genre_count
  end

  def self.artist_count
    artist_count = {} # Hash needed to be created inside the class method
    @@artists.each {|x| artist_count[x] ||= 0; artist_count[x] += 1} # Needed to initialize value at 0 first before iterating +1 
    artist_count
  end
end