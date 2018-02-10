class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists =[]
  @@genres=[]

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
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
    genres ={}
    @@genres.each {|element|
      genres[element] = @@genres.count(element)
    }
    genres
  end

  def self.artist_count
    artists ={}
    @@artists.each {|element|
      artists[element] = @@artists.count(element)
    }
    artists
  end
end
