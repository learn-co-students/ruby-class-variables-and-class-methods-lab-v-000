class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = Array.new
  @@artists = Array.new

  def initialize(name, artist, genre)
    @name = name
    @@artists << @artist = artist
    @@genres << @genre = genre
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
    genre_count = @@genres.group_by{|genre| genre}
    genre_count.each do |genre, count|
      genre_count[genre] = count.length
    end
  end

  def self.artist_count
    artist_count = @@artists.group_by{|artist| artist}
    artist_count.each do |artist, count|
      artist_count[artist] = count.length
    end
  end

end
