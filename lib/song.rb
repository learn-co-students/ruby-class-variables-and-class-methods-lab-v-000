class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = Array.new
  @@artists = Array.new

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << @genre
    @@artists << @artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq!
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genre_count
    #the argument passed to .inject in this case is an empty hash.
    #the {} becomes the starting place for .inject
    #broken down, this method looks like this: 
      #[rap, rap, pop].uniq.inject({}) { |genre, count| }
    @@genres.uniq.inject({}) do |genre, count|
      genre[count] = @@genres.count(count); genre
    end
  end

  def self.artist_count
    @@artists.uniq.inject({}) do |artist, count|
      artist[count] = @@artists.count(count); artist
    end
  end




end