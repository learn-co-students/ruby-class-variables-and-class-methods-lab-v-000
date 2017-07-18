class Song
	require 'pry'
	attr_accessor :name, :genre, :artist
	@@count = 0
	@@artists = []
	@@genres = []

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

	def self.artists
		@@artists.uniq
	end

	def self.genres
		@@genres.uniq
	end

	def self.genre_count
		genre_hash = {}
		genre_key = 0
		#binding.pry
		@@genres.each do |g| genre_hash[g] = @@genres.count(g)end
		genre_hash
	end

	def self.artist_count
		artist_hash = {}
		artist_key = 0
		#binding.pry
		@@artists.each do |a| artist_hash[a] = @@artists.count(a)end
		artist_hash
	end


end
