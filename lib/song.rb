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
    @@genres = @@genres.uniq
  end

  def self.artists
    @@artists = @@artists.uniq
  end

  def self.genre_count
    no_genres = {}
    array = []
    @@genres.each do |item|
  	 	array = @@genres.select { |num| num == item}
  	 	no_genres[item] = array.length
	  end
    no_genres
  end

  def self.artist_count
    no_artists = {}
    @@artists.each do |item|
  	 	array = @@artists.select { |num| num == item}
  	 	no_artists[item] = array.length
	  end
    no_artists
  end

end
