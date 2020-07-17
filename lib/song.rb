class Song
	
	@@count = 0

	attr_accessor :name, :artist, :genre

	def initialize(name, artist, genre)
		@name = name
		@artist = artist
		@@artists << @artist
		@genre = genre
		@@genres << @genre
		@@count += 1
	end

	def self.count
		@@count
	end

	@@genres = []

	def self.genres
		@@genres.uniq!  #deletes duplicates in array so that array only contains unique elements
	end

	@@artists = []

	def self.artists
		@@artists.uniq!
	end

	def self.genre_count
		genre_histogram = {}
		@@genres.uniq.each {|unique_genre| genre_histogram[unique_genre] = 0 } #sets count for each unique genre to zero
		@@genres.each {|genre| genre_histogram[genre] += 1 } #adds to count for each time a specific genre is present in @@genres
		genre_histogram
	end

	def self.artist_count
		artist_histogram = {}
		@@artists.uniq.each {|unique_artist| artist_histogram[unique_artist] = 0 }
		@@artists.each {|artist| artist_histogram[artist] += 1 }
		artist_histogram
	end

end