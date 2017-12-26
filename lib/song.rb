class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name,artist,genre)
    @name = name
    @@artists << @artist = artist
    @@genres << @genre = genre
      @@count += 1
  end

  def self.count
  @@count
end

  def self.artists
    @@artists.uniq { |artist| artist }
  end

  def self.genres
    @@genres.uniq {|genre| genre}
  end

  def self.genre_count
    genres_hash = Hash.new(0)
    genres_hash.tap {|hash| @@genres.each{ |genre| hash[genre] += 1}}
  end

  def self.artist_count
    artists_hash = Hash.new(0)
    artists_hash.tap { |hash| @@artists.each { |artist| hash[artist] += 1 } }
  end

end
