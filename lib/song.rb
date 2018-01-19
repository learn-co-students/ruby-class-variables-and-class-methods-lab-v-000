class Song

	attr_reader :name, :artist, :genre #don't need att_accessor unless we want to overwrite these later (then want to cover attr_reader too)

	@@count = 0
	@@genres = []
	@@artists = []

	def initialize(name, artist, genre)
		@name = name
		@artist = artist
		@genre = genre
		@@count += 1
		@@genres << genre
		@@artists << artist
		
	end

	def self.count #return count for Song class
		@@count
	end

	def self.genres #return list of unique genres for Song class
		@@genres.uniq
	end

	def self.genre_count # return histogram reflecting genre counts for Song class
		genre_count_hash = {}
		@@genres.each do |genre|
			if !genre_count_hash[genre]
				genre_count_hash[genre] = 1
			else 
				genre_count_hash[genre] += 1
			end
		end
		genre_count_hash
	end

	def self.artists #return list of unique artists for Song class
		@@artists.uniq
	end

	def self.artist_count #return histogram reflecting artist counts for Song class
		artist_count_hash = {}
		@@artists.each do |artist|
			if !artist_count_hash[artist]
				artist_count_hash[artist] = 1
			else 
				artist_count_hash[artist] +=1
			end
		end
		artist_count_hash
	end

end	