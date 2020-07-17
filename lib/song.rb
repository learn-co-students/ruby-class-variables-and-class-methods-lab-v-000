class Song

    @@count = 0
    @@genres = []
    @@artists = []

attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq{|x| x}
  end

  def self.artists
    @@artists.uniq{|x| x}
  end

  def self.genre_count
    result = Hash.new(0)
    @@genres.each { |genre| result[genre] += 1 }
    result
  end

  def self.artist_count
    result2 = Hash.new(0)
    @@artists.each { |artist| result2[artist] += 1 }
    result2
  end
end 
