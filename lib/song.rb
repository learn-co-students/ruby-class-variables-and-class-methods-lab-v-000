class Song
	attr_accessor :name
	attr_accessor :artist
	attr_accessor :genre

	@@count = 0
	@@artists = []
	@@genres = []

	def initialize(name, artist, genre)
		@name = name
		@artist = artist
		@genre = genre

		@@count += 1
		@@artists << artist
		@@genres << genre
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
		histogram = {}

		@@genres.each {|genre|
			if histogram[genre] == nil
				histogram[genre] = 0
			end
			histogram[genre] += 1
		}

		histogram
	end

	def self.artist_count 
		histogram = {}

		@@artists.each {|artist|
			if histogram[artist] == nil
				histogram[artist] = 0
			end
			histogram[artist] += 1
		}
		histogram
	end
end
