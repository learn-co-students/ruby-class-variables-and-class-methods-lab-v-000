class Song

  ### ATTR ###

  attr_accessor :name, :artist, :genre

  ### CLASS VARIABLES ###

  @@count = 0
  @@genres = []
  @@artists = []

  ### INITIALIZE METHOD ###

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  ### CLASS METHODS ###

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
    count = {}
    @@genres.each do |genre|
      if count.include?(genre)
        count[genre] += 1
      else
        count[genre] = 1
      end
    end
    count
  end

  def self.artist_count
    count = {}
    @@artists.each do |artist|
      if count.include?(artist)
        count[artist] += 1
      else
        count[artist] = 1
      end
    end
    count
  end
end