class Song

	@@count = 0
	@@genres = []
	@@artists = []

	attr_accessor :name, :artist, :genre

	def initialize(name, artist, genre)
		@name = name
		@artist = artist
		@genre = genre
		@@count += 1
		@@genres << @genre
		@@artists << @artist
	end

	def self.count
		@@count
	end

	def self.genres
		@@genres.uniq #control for duplicates here
	end

	def self.artists
		@@artists.uniq
	end

	def self.genre_count
		new_hash = {}
		@@genres.each do |f|
			if new_hash[f] 
				new_hash[f] = new_hash[f] + 1
			else
				new_hash[f] = 1
			end
		end
		new_hash
	end

	def self.artist_count
		new_hash = {}
		@@artists.each do |f|
			if new_hash[f] 
				new_hash[f] = new_hash[f] + 1
			else
				new_hash[f] = 1
			end
		end
		new_hash
	end
end
