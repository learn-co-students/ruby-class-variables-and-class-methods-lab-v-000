class Song

	attr_accessor :name, :artist, :genre

	@@count = 0
	@@genres = []
	@@artists = []

	def initialize (name, artist, genre)
		@name = name
		@artist = artist
		@genre = genre
		@@count += 1
		@@genres << @genre
		@@artists << @artist
	end

	def self.count
		return @@count
	end

	def self.artists
		@@artists.uniq
	end

	def self.genres
		@@genres.uniq
	end

	def self.genre_count
		hash = Hash.new
		@@genres.each {|i| hash[i] = @@genres.count(i)}
		return hash
	end

	def self.artist_count
		hash = Hash.new
		@@artists.each {|i| hash[i] = @@artists.count(i)}
		return hash
	end

end
