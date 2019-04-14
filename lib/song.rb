class Song

	attr_accessor :name, :artist, :genre

	@@count=0

	@@genres=[]

	@@artists=[]

	def initialize(name, artist, genre)
		@name=name
		@artist=artist
		@genre=genre
		@@count+=1
		@@genres<<genre
		@@artists<<artist
	end

	def self.count
		@@count
	end

	def self.genres
		@@genreone=@@genres.uniq
		@@genreone
	end

	def self.artists
		@@artistone=@@artists.uniq
		@@artistone
	end

	def self.genre_count
		genre_count_hash={}
		@@genreone.each do |gen|
			x=@@genres.count(gen)
			genre_count_hash[gen]=x
		end
		genre_count_hash
	end

	def self.artist_count
		artist_count_hash={}
		@@artistone.each do |art|
			x=@@artists.count(art)
			artist_count_hash[art]=x
		end
		artist_count_hash
	end

end
