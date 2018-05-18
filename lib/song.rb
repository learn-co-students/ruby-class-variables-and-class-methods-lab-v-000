class Song
  attr_accessor :name, :artist, :genre, :name
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    self.name = name
    self.artist = artist
    self.genre = genre
    @@count += 1
    @@genres << self.genre
    @@artists << self.artist
  end

  def self.count
    @@count
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genre_count
    types = {}

    @@genres.each { |type|
      if types[type] == nil
        types[type] = 1
      else
        types[type] += 1
      end
    }
    
    types
  end
  
  def self.artist_count
    singers = {}

    @@artists.each { |musician|
      if singers[musician] == nil
        singers[musician] = 1
      else
        singers[musician] += 1
      end
    }
    
    singers
  end
end
