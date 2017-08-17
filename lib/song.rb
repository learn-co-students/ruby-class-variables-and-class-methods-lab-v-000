class Song
	attr_accessor :name, :artist, :genre

	@@count = 0
	@@genres = []
	@@artists = []


	def initialize(name, artist, genre)
		@name = name
		@artist = artist
		@genre = genre
		@@genres << genre
		@@artists << artist

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
		counter_hash = Hash.new(0)

		@@genres.each do |genre|
			counter_hash[genre] += 1
		end
		counter_hash 
	end

	def self.artist_count
		counter_hash = Hash.new(0)

		@@artists.each do |artist|
			counter_hash[artist] += 1
		end

		counter_hash 
	end 

end 