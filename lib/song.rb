class Song
	
	@@count = 0
	@@genres = []
	@@artists = []

	def initialize(name, artist, genre)
		@@count += 1
		@name = name
		@artist = artist
		@@artists << artist
		@genre = genre
		@@genres << genre
		
	end
	attr_reader :name, :artist, :genre
	
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
		genre_hash = {}
		@@genres.collect do |genre| 
			if !genre_hash[genre]
				genre_hash[genre] = 1
			else
				genre_hash[genre] += 1
			end
		end
		genre_hash
	end

	def self.artist_count
		artist_hash = {}
		@@artists.collect do |artist|
			if !artist_hash[artist]
				artist_hash[artist] = 1
			else
				artist_hash[artist] += 1
			end
		end
		artist_hash
	end

end