class Song
  
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
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count.keys.include?(genre)
        genre_count[genre] += 1
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end

  def self.artists
    @@artists.uniq
  end

  def self.artist_count
    artists = {}
    @@artists.each do |artist|
      if artists.keys.include?(artist)
        artists[artist] += 1
      else
        artists[artist] = 1
      end
    end
    artists
  end

end
