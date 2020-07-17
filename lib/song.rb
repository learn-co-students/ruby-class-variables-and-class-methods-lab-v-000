class Song 

	attr_accessor :name, :artist, :genre

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
		unique_artists = []
		@@artists.each do |artist|
			if unique_artists.include?(artist)
				unique_artists
			else
				unique_artists << artist
			end 
		end
		unique_artists
	end 

	def self.genres
		unique_genres = []
		@@genres.each do |genre|
			if unique_genres.include?(genre)
				unique_genres
			else
				unique_genres << genre
			end 
		end
		unique_genres
	end

	def self.genre_count
		genre_counter = {}
		@@genres.each do |genre|
			if genre_counter.keys.include?(genre)
				genre_counter[genre] += 1
			else 
				genre_counter[genre] = 1
			end
		end
		genre_counter
	end 

	def self.artist_count 
		artist_counter = {}
		@@artists.each do |artist|
			if artist_counter.keys.include?(artist)
				artist_counter[artist] +=1
			else
				artist_counter[artist] = 1
			end
		end
		artist_counter
	end 


end

