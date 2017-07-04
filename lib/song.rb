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

		@@artists.push(artist) #if !@@artists.include?(artist)
		@@genres.push(genre) #if !@@genres.include?(genre)
	end

	def self.count
		@@count
	end

	def self.artists
		artists_unique = []
		@@artists.each do |artist|
			artists_unique.push(artist) if !artists_unique.include?(artist)
		end
		artists_unique
	end

	def self.genres
		genres_unique = []
		@@genres.each do |genre|
			genres_unique.push(genre) if !genres_unique.include?(genre)
		end
		genres_unique
	end

	def self.genre_count
		genre_hash = {}

		@@genres.each do |genre|
			if !genre_hash.has_key?(genre)
				genre_hash[genre] = 1
			else
				genre_hash[genre] += 1
			end
		end
		genre_hash
	end

	def self.artist_count
		artist_hash = {}

		@@artists.each do |artist|
			if !artist_hash.has_key?(artist)
				artist_hash[artist] = 1
			else
				artist_hash[artist] += 1
			end
		end
		artist_hash
	end
end