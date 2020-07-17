require 'pry'

class Song
	@@count = 0
	@@artists = []
	@@genres = []

	attr_accessor :name, :artist, :genre
	
	def initialize(name, artist, genre)
		@name= name
		@artist = artist
			@@artists << artist
		@genre = genre
			@@genres << genre
		@@count += 1
		
	end

	def self.count
		@@count
	end

	def self.artists
		@@artists.each_with_index do |artist, i|
			if @@artists.count(artist) == 1
				@@artists << artist
			else	
				@@artists.shift(i)	
			end
		end
		@@artists
	end

	def self.genres
			@@genres.each_with_index do |genre, i|
			if @@genres.count(genre) == 1
				@@genres << genre
			else	
				@@genres.shift(i)	
			end
		end
		@@genres
	end

	def self.artist_count
		artist_hash= {}
		@@artists.each do |artist|
			if !(artist_hash[artist])
				artist_hash[artist] = @@artists.count(artist)
			end
		end
		artist_hash
	end

	def self.genre_count
		genre_hash= {}
		@@genres.each do |genre|
			if !(genre_hash[genre])
				genre_hash[genre] = @@genres.count(genre)
			end
		end
		genre_hash
	end
end