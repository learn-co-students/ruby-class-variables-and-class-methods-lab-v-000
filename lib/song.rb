class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
    @@count += 1
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
    genres = {}
    @@genres.each {|g| genres.include?(g) ? genres[g]+=1 : genres[g] = 1}
    genres
  end

  def self.artist_count
    artists = {}
    @@artists.each { |a| artists.include?(a) ? artists[a]+=1 : artists[a]= 1}
    artists
  end

end
