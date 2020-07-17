class Song

  @@count = 0
  @@artists = []
  @@genres = []

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

	def self.genres
		@@genres.uniq
	end

	def self.artists
		@@artists.uniq
	end

	def self.genre_count
		genres_count_hash = {}
		@@genres.each do |genre|
			if genres_count_hash[genre]
				genres_count_hash[genre] +=1
			else
				genres_count_hash[genre] = 1
			end
		end
		genres_count_hash

	end

	def self.artist_count
		artist_count_hash = {}
		@@artists.each do |artist|
			if artist_count_hash[artist]
				artist_count_hash[artist] +=1
			else
				artist_count_hash[artist] = 1
			end
		end
		artist_count_hash
	end


end
