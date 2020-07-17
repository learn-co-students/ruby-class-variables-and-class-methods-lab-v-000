require 'pry'

class Song
	attr_accessor :name, :artist, :genre

	@@count = 0
	@@genres = []
	@@artists = []

	def initialize(nam, artist, genre)
		@name = nam
		@artist = artist
		@genre = genre
		
		@@count += 1
		@@genres << @genre
		@@artists << @artist
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
		# itereate over genres array, and count each element and its duplicates
		genre_hash = {}
		@@genres.each do |genre|
			if genre_hash[genre]
				genre_hash[genre] += 1
			else
				genre_hash[genre] = 1
			end
		end
		genre_hash
	end

	def self.artist_count
		# itereate over genres array, and count each element and its duplicates
		artist_hash = {}
		@@artists.each do |artist|
			if artist_hash[artist]
				artist_hash[artist] += 1
			else
				artist_hash[artist] = 1
			end
		end
		artist_hash
	end

end
