class Song

  @@count = 0
  @@artists = [] #initialize empty class array 'artists'
  @@genres = [] #initialize empty class array 'genres'

  attr_accessor(:name, :artist, :genre)

  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
    @@genres << @genre #push new instance genre onto class array of genres
    @@artists << @artist #push new instance artist onto class array of artists
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists = @@artists.uniq!
    @@artists # returns a unique array of artists of existing songs
  end

  def self.genres
    @@genres = @@genres.uniq! # returns a unique array of genres of existing songs
    @@genres
  end

  def self.genre_count
    genre_hash = Hash.new(0)
    @@genres.each do |genre|
      genre_hash[genre] +=1
    end
    genre_hash
  end

  def self.artist_count
    artist_hash = Hash.new(0)
    @@artists.each do |artist|
      artist_hash[artist] +=1
    end
    artist_hash
  end

end
