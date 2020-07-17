class Song

  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end


  def self.artists
    artist_array = []
    @@artists.each do |artist|
      artist_array << artist unless artist_array.include?(artist)
    end
    artist_array
  end

  def self.genres
    genre_array = []
    @@genres.each do |genre|
      genre_array << genre unless genre_array.include?(genre)
    end
    genre_array
  end

  def self.genre_count
    genre_array = self.genres
    genre_hash = {}
    genre_array.each do |genre|
      genre_hash[genre] = @@genres.select {|genres| genres == genre}.size
    end
    genre_hash
  end

  def self.artist_count
    artist_array = self.artists
    artist_hash = {}
    artist_array.each do |artist|
      artist_hash[artist] = @@artists.select {|artists| artists == artist}.size
    end
    artist_hash
  end

end
