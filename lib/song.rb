class Song
  @@count = 0
  @@artists = Array.new
  @@genres = Array.new
  attr_accessor :name, :artist, :genre

  def initialize(name,artist,genre)
    @@count+=1
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
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

  def self.artist_count
    artist_count = Hash.new
    @@artists.uniq.each do |artist|
      artist_count[artist]=0
    end
    @@artists.each do |artist|
      artist_count[artist]+=1  if artist_count.keys.flatten.include?(artist)
    end
    artist_count
  end

  def self.genre_count
    genre_count = Hash.new
    @@genres.uniq.each do |genre|
      genre_count[genre]=0
    end
    @@genres.each do |genre|
      genre_count[genre]+=1  if genre_count.keys.flatten.include?(genre)
    end
    genre_count
  end


end
