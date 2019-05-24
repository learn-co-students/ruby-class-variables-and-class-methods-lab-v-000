require "pry"

class Song
	attr_accessor :name, :artist, :genre

	@@artists = []
	@@genres = []
	@@count = 0

	def initialize(name,artist,genre)
		@name = name
		@artist = artist
		@genre = genre
		@@artists << artist
		@@genres << genre
		@@count += 1
	end



	def self.count
		@@count 
	end


	def self.genres
		@@genres.uniq
	end

	def self.artists
		@@artists.uniq
	end

	def self.genre_count
		genre_count = {}
		@@genres.each do |genre|
			if !genre_count.keys.include?(genre)
				genre_count[genre] = 1
			else
				genre_count[genre] += 1
			end
		end
		return genre_count
	end



	def self.artist_count
				artist_count = {}
		@@artists.each do |genre|
			if !artist_count.keys.include?(genre)
				artist_count[genre] = 1
			else
				artist_count[genre] += 1
			end
		end
		return artist_count
	end












end