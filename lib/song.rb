class Song

  attr_accessor :name, :artist, :genre
  #keeps track of number of new songs created from the Song class
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
  #instance variable @
    @name = name
    @artist = artist
    @genre = genre
  #class variable @@
    @@count +=1
    @@genres << genre
    @@artists << artist
  end

  def self.genres
    @@genres.uniq
  end

  def self.count
  #class method that returns that number of songs created
    @@count
  end

  def self.artists
  #.uniq removes duplicates of self
    @@artists.uniq
  end

  def self.genre_count
  #returns a hash in which the keys are the names of each genre.
  #Each genre name key should point to a value that is the number
  #of songs that have that genre.
    genre_count = {}
  #|genre| is a variable yielded to the block
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist]
        artist_count[artist] += 1
      else
        artist_count[artist] = 1
      end
    end
    artist_count
  end

end
