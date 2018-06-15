class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  @@gener = {}
  @@artistsList = []
  @@genresList = []
  @@generCount = {}
  @@artistCount = {}
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    @@genresList = @@genres.uniq
    @@genresList
  end
  
  def self.artists
     @@artistsList = @@artists.uniq
    @@artistsList
  end
  
  def self.genre_count
    @@genres.each do |genre| 
      if(@@generCount.has_key?(genre))
        @@generCount[genre] += 1
      else
        @@generCount[genre] = 1
      end
    end
    @@generCount
  end
  
  def self.artist_count
    @@artists.each do |artist| 
      if(@@artistCount.has_key?(artist))
        @@artistCount[artist] += 1
      else
        @@artistCount[artist] = 1
      end
    end
    @@artistCount
  end

end