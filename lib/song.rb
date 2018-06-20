class Song
	attr_accessor :name, :artist, :genre

	@@count = 0
	@@artists = []
	@@genres = []

	def initialize(name, artist, genre)
		@name = name
		@@count += 1

		@artist = artist
		@@artists << artist
		
		@genre = genre
		@@genres << genre
	end

	def self.count
		@@count
	end

	def self.artists
		unique_artists = []
		@@artists.each do |artist|
			unique_artists << artist if !unique_artists.include?(artist)
		end
		unique_artists
	end

	def self.genres
		unique_genres = []
		@@genres.each do |genre|
			unique_genres << genre if !unique_genres.include?(genre)
		end
		unique_genres
	end

	def self.genre_count
		histogram = {}
		@@genres.each do |genre|
			if histogram[genre]
				histogram[genre] += 1
			else
				histogram[genre] = 1
			end
		end
		histogram
	end

	def self.artist_count
		histogram = {}
		@@artists.each do |artist|
			if histogram[artist]
				histogram[artist] += 1
			else
				histogram[artist] = 1
			end
		end
		histogram
	end
end