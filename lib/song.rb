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
		@@genres << @genre
		@@artists << @artist
	end

	def self.genres
		output = []
		@@genres.each { |genre| output << genre if !output.include?(genre) }
		output
	end

	def self.artists
		output = []
		@@artists.each { |artist| output << artist if !output.include?(artist) }
		output
	end

	def self.count
		@@count
	end

	def self.genre_count
		out_hash = {}
		@@genres.each do |genre|
			if out_hash.include?(genre)
				out_hash[genre] = (out_hash[genre] + 1)
			else
				out_hash[genre] = 1
			end
		end
		out_hash
	end

	def self.artist_count
		out_hash = {}
		@@artists.each do |artist|
			if out_hash.include?(artist)
				out_hash[artist] = (out_hash[artist] + 1)
			else
				out_hash[artist] = 1
			end
		end
		out_hash
	end
end