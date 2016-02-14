class Song

	attr_accessor :name, :artist, :genre

	@@count = 0
	@@genres = []
	@@artists = []
	@@genre_count = {}
	@@artist_count = {}

	def initialize(name, artist, genre)
		@@count += 1
		@name = name
		@artist = artist
		@genre = genre
		@@genres << genre
		@@artists << @artist
	end

	def self.count
		return @@count
	end

	def self.genres
		@@genres.uniq
	end

	def self.artists
		@@artists.uniq
	end

	def self.genre_count
		hash_genre = {}
		@@genres.each do |genre|
			if hash_genre.keys.include? genre 
				hash_genre[genre] = hash_genre[genre] + 1
			else hash_genre[genre] = 1
			end
		end
		hash_genre
	end

	def self.artist_count
		hash_artists = {}
		@@artists.each do |artist|
			if hash_artists.keys.include? artist
				hash_artists[artist] = hash_artists[artist] + 1
			else hash_artists[artist] = 1
			end
		end
		hash_artists
	end
end