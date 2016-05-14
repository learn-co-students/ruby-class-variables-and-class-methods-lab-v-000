require 'pry'

class Song

	attr_reader :name, :artist, :genre
	
	@@count = 0
	@@genres = []
	@@artists = []
	
	def initialize(name, artist, genre)
		@name = name
		@artist = artist
		@genre = genre
		@@artists << artist
		@@genres << genre
		@@count += 1
	end
	
	def self.artists
		artists_list = []
		@@artists.each { |x| artists_list << x unless artists_list.include?(x) }
		artists_list
	end
	
	def self.genres
		genres_list = []
		@@genres.each { |x| genres_list << x unless genres_list.include?(x) }
		genres_list
	end
	
	def self.count
		@@count
	end
	
	def self.genre_count
		hash = Hash[@genres_list.collect { |x| [x, ""] } ]
	end

end
