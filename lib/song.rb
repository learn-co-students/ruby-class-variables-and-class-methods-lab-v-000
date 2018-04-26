class Song 
	attr_reader :name, :artist, :genre 

	@@count = 0 
	@@genres = []
	@@artists = []

	def initialize(name, artist, genre) 
		@@count += 1
		@@genres << genre
		@@artists << artist
		@name = name 
		@artist = artist 
		@genre = genre
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
		genre_hash = {}
		@@genres.each do |genre| 
			!genre_hash.has_key?(genre) ? genre_hash[genre] = 1 : genre_hash[genre] += 1
		end 
		genre_hash
	end 

	def self.artist_count 
		artist_hash = {}
		@@artists.each do |artist| 
			!artist_hash.has_key?(artist) ? artist_hash[artist] = 1 : artist_hash[artist] += 1
		end 
		artist_hash
	end 

end
