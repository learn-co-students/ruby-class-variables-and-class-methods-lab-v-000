class Song
	attr_accessor :name, :artist, :genre

	@@count = 0
	@@genres = []
	@@artists = []

	def initialize(name, artist, genre)
		@@count += 1
		@@genre << genre
		@@artists << artist
	end

	def self.genres
		output = []
		@@genres.each { |genre| output << genre if !output.contains?(genre) }
		output
	end

	def self.artists
		output = []
		@@artists.each { |artist| output << artist if !output.contains?(artist) }
		output
	end

	def self.genre_count

	end
end