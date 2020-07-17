class Song
    attr_accessor :name, :artist, :genre
  @@artists = []
  @@genres = []
  @@count = 0
  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end
  #returns the count of itself
  def self.count
     @@count
  end
  #selects objects in an array that are unique
  def self.genres
    @@genres.uniq
  end
  #selects on itself
  def self.artists
    @@artists.uniq
  end
  #class method is defined by the use of self
  def self.genre_count
      genre_count = {}
      #class variable genres iteration
      @@genres.each do |genre|
        #check if it has keys, if it does continue incrementating
        #otherwise set = 1
      genre_count.has_key?(genre) ? genre_count[genre] += 1 : genre_count[genre] = 1
     end
     genre_count
  end
  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      artist_count.has_key?(artist) ? artist_count[artist] += 1 : artist_count[artist] = 1
    end
    artist_count
  end
end
