class Song

	attr_accessor :name, :artist, :genre

  	@@count	= 0
  	@@genres = []
  	@@artists = []

	def initialize(name = nil, artist = nil, genre = nil)
		@name = name
		@artist = artist	
		@genre = genre

   		@@count += 1
		@@genres << genre
		@@artists << artist
	end

  	def self.count
    		@@count
  	end

  	def self.genres
		unique_genres = []
		@@genres.each do |x|
			if !unique_genres.include?(x)
				unique_genres << x
			end
		end
	return unique_genres
  	end

	def self.artists
  		unique_artists = []
		@@artists.each do |x|
			if !unique_artists.include?(x)
				unique_artists << x
			end
		end
	return unique_artists
  	end

	def self.genre_count
		genre_hash = {}
		count = 1
		@@genres.each do |x|
			if !genre_hash.has_key?(x)
				genre_hash[x] = count
			else
				genre_hash[x] = count + 1		
			end
		end
	return genre_hash
	end

	def self.artist_count
		artist_hash = {}
		count = 1
		@@artists.each do |x|
			if !artist_hash.has_key?(x)
				artist_hash[x] = count
			else
				artist_hash[x] = count + 1
			end
		end
	return artist_hash
	end

end
