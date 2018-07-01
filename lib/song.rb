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
    @@artists << @artist
    @@genres << @genre
  end

  def self.count
    @@count
  end

  def self.artists
    @artist_array = []
    @@artists.each do |person|
      if @artist_array.any? {|added| added == person} == false
        @artist_array << person
      end
    end
    @artist_array
  end

  def self.genres
    @genre_array = []
    @@genres.each do |types|
      if @genre_array.any? {|added| added == types} == false
        @genre_array << types
      end
    end
    @genre_array
  end

  def self.genre_count
    genre_hash = {}
    @genre_array.each do |ind|
      genre_hash[ind] = @@genres.count(ind)
    end
    genre_hash
  end

  def self.artist_count
    artist_hash = {}
    @artist_array.each do |ind|
      artist_hash[ind] = @@artists.count(ind)
    end
    artist_hash
  end

end
