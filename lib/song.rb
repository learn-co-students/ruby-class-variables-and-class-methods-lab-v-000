class Song

  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre
  attr_reader :artists, :genres

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << @artist    
    @@genres << @genre
    
  end
  
  def self.count
    return @@count
  end
  
  def self.artists
    each_artist = []
    @@artists.each do |single_artist|
    if each_artist.none? {|a| a == single_artist}
      each_artist << single_artist
    end
  end
    return each_artist
  end

  def self.genres
    each_genre = []
    @@genres.each do |single_genre|
    if each_genre.none? {|a| a == single_genre}
      each_genre << single_genre
    end
  end
    return each_genre
  end

  def self.genre_count
    genre_count = Hash.new(0)
    @@genres.each {|name| genre_count[name] +=1}
    return genre_count
  end

  def self.artist_count
    artist_count = Hash.new(0)
    @@artists.each {|name| artist_count[name] +=1}
    return artist_count
  end
    
end

