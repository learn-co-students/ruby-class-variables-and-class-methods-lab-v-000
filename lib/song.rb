class Song
  @@count   = 0
	@@artists = []
	@@genres  = []

	attr_accessor :name, :artist, :genre


	def initialize (name, artist, genre)
    @name   = name
		@artist = artist
		@genre  = genre
		@@count += 1
		@@artists << @artist
		@@genres  << @genre
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
		self.histogram(@@genres)
	end

	def self.artist_count
		self.histogram(@@artists)
	end

	def self.histogram(arr)
		count = Hash.new
		arr.uniq.each {|i| count[i] = arr.count(i)}
		count
	end

end
