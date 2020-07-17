#   ~~~HAVICK WAS HERE~~~


class Song
	@@artists = []
	@@count = 0
	@@genres = []



	attr_accessor :name, :artist, :genre

	def initialize(name, artist, genre)						#TRAITS AT BIRTH FOR EACH SONG
		@name = name
		@artist = artist
		@genre = genre

		   @@artists << @artist
		   @@count+=1
		   @@genres << genre
	end

	def self.count	  								   #COUNT METHOD FOR SONGS
	 @@count

	end

	def self.artists										#ARTIST LIST W/O REPEATS
		@@artists.uniq
	end

	def self.genres                                         #GENRE LIST W/O REPEATS
		@@genres.uniq
	end

	def self.genre_count  									#PUTS GENRES INTO HASH WITH GENRE AS KEY AND NUMBER OF SONGS AS VALUE
		@@genres.each_with_object(Hash.new(0)) {|genre, count| count[genre] += 1}
	end

	def self.artist_count									#PUTS ARTISTS IN HASH WITH ARTIST AS KEY AND NUMBER OF SONGS AS VALUE
		@@artists.each_with_object(Hash.new(0)) {|artist, count| count[artist] +=1}
	end

end
