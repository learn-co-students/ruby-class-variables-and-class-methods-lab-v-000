class Song
  @@count = 0
  @@genres = []
  @@artists = []

  attr_accessor :name, :artist, :genre

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

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count.has_key?(genre)
        genre_count[genre] += 1
      else
        genre_count[genre] = 1
      end #if genre_count.has_key?
    end #@@genres.each
    genre_count
  end #def self.genre_count

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count.has_key?(artist)
        artist_count[artist] += 1
      else
        artist_count[artist] = 1
      end #if artist_count.has_key?
    end #@@artists.each
    artist_count
  end #def self.artist_count

end #class Song
