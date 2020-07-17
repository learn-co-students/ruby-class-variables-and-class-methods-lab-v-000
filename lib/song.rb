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
		@@genres << genre
		@@artists << artist
	end

	def self.count
		@@count
	end

	def self.artists
		art = []
		@@artists.each do |artist|
			art << artist unless art.include?(artist)
		end
		art
	end

	def self.genres
		gen = []
		@@genres.each do |genre|
			gen << genre unless gen.include?(genre)
		end
		gen
	end
	def self.genre_count
		genres = {}
		@@genres.each do |genre|
			if genres[genre] == nil
				genres[genre] = 1
			else 
				genres[genre] +=1
			end
		end
		genres
	end

	def self.artist_count
		art = {}
		@@artists.each do |artist|
			if art[artist] == nil
				art[artist] = 1
			else
				art[artist] += 1
			end
		end
		art
	end



end
