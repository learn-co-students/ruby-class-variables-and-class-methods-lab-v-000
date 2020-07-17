class Song
	@@count = 0
	@@genres = []
	@@artists = []
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
		output = {}
		unique = @@genres.uniq
		unique.each do |x|
			output[x] = @@genres.count(x)
		end
		output
	end
	def self.artist_count
		output = Hash.new(0)
		@@artists.each do |y|
			output[y]+=1
		end
		output
	end
	def initialize(name, artist, genre)
		@name = name
		@artist = artist
		@genre = genre
		@@count+=1
		@@genres << genre
		@@artists << artist
	end
	attr_accessor :name, :artist, :genre
end