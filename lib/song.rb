class Song
	attr_accessor :name, :artist, :genre

	@@count = 0
	@@artists = []
	@@genres = []


	def initialize(name, artist, genre)
		@name = name
		@artist = artist
		@genre = genre
		@@count+=1
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
		genre_count_hash = {}
		@@genres.each do |genre|
			soung_count = genre_count_hash[genre]
			soung_count ||= 0
			genre_count_hash[genre] = soung_count+=1
		end
		genre_count_hash
	end

	def self.artist_count
		artist_count_hash = {}
		@@artists.each do |artist|
			soung_count = artist_count_hash[artist]
			soung_count ||= 0
			artist_count_hash[artist] = soung_count+=1
		end
		artist_count_hash
	end

	# def self.genre_count
	# 	genre_count_hash = {}
	# 	@@genres.each do |genre|
	# 		soung_count = 0
	# 		if genre_count_hash.keys.include?(genre)
	# 			soung_count = genre_count_hash[genre]
	# 			genre_count_hash[genre] = soung_count+=1
	# 		else
	# 			genre_count_hash[genre] = soung_count+=1
	# 		end
	# 	end
	# 	genre_count_hash
	# end

end