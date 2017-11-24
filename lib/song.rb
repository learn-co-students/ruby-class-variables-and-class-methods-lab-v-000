class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist #if !@@artists.include?(artist)
    @@genres << genre #if !@@genres.include?(genre)
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
      genre_count[genre] ? genre_count[genre]+=1 : genre_count[genre] = 1
    end
    genre_count
  end

  def self.artist_count
    @@artists.each_with_object(Hash.new(0)) do |artist,counts|
      counts[artist] +=1
    end
  end

end
