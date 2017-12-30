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

  def self.genre_count
  	genre_object = {}
  	@@genres.each do |genre|
  		if genre_object.keys.include?(genre)
  			genre_object[genre] += 1
  		else 
  			genre_object[genre] = 1
  		end
  	end
  	genre_object
  end

  def self.artists
  	@@artists.uniq
  end

  def self.artist_count
  	artist_object = {}
  	@@artists.each do |artist|
  		if artist_object.keys.include?(artist)
  			artist_object[artist] += 1
  		else 
  			artist_object[artist] = 1
  		end
  	end
  	artist_object
  end
end