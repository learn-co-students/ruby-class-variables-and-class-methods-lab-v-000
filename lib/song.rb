class Song
	attr_accessor :name, :artist, :genre
	
	@@count = 0
	@@genres = []
	@@artists = []
	
	def initialize(name, artist, genre)
		@name = name
		@artist = artist
		@genre = genre
		@@artists << artist 
		@@genres << genre 
		@@count += 1
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
		self.return_histo(@@genres)
	end
	
	def self.artist_count
		self.return_histo(@@artists)
	end
	
	def self.return_histo(array)
		# http://jerodsanto.net/2013/10/ruby-quick-tip-easily-count-occurrences-of-array-elements/
		# rather than check if the key exists you can set
		# the default value to 0 with this trick
		histo = Hash.new 0
		array.each do |item|
			histo[item] += 1
		end
		histo
	end
	
end