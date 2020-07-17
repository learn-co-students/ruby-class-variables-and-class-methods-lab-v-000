class Song
	@@count = 0
	@@artists=[]
	@@genres=[]

	attr_accessor :name, :artist, :genre

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

	def self.artist_count
		temp={}
		self.artists.each do |i|
			temp[i]= @@artists.find_all{|t| i==t}.count
		end
		temp
	end

	def self.genre_count
		temp={}
		self.genres.each do |i|
			temp[i]= @@genres.find_all{|t| i==t}.count
		end
		temp
	end


end