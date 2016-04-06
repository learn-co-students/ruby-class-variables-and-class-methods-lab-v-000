def Song

  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artisit
    
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
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

  def self.genres
    @@genres.uniq
  end

  def self.genres_count
    genres_count = {}
    @@genres.each do |genre|
      if genres_count[genre]
        genres_count[genre] += 1
      else
        genres_count[genre] = 1
      end
    end
    genres_count
  end
end
