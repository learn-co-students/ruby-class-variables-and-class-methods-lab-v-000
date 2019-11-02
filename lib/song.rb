class Song
	attr_accessor :name, :artist, :genre

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
		genre_histogram = {}

		@@genres.each do |genre|
			if !genre_histogram[genre]
				genre_histogram[genre] = 1
			else
				genre_histogram[genre] += 1
			end
		end

		genre_histogram
	end

	def self.artist_count
		artist_histogram = {}

		@@artists.each do |artist|
			if !artist_histogram[artist]
				artist_histogram[artist] = 1
			else
				artist_histogram[artist] += 1
			end
		end

		artist_histogram
	end

end
