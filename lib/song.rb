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
		@@artists.uniq
	end

	def self.genres
		@@genres.uniq
	end

	def self.genre_count
		d = Hash.new 0
		@@genres.each do |genre|
			d[genre] += 1
		end
		d
	end

	def self.artist_count
		d = Hash.new 0
		@@artists.each do |artist|
			d[artist] +=1
		end
		d
	end

end
