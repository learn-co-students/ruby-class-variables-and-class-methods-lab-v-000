class Song

	@@count = 0
	@@artists = []
	@@genres = []

	attr_accessor :name, :artist, :genre

	def initialize (name, artist, genre)
		@name = name
		@artist = artist
		@genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
	end

  def self.count
		return @@count
	end

  def self.artists
		@@artists.uniq
	end

  def self.genres
		 @@genres.uniq
	end

  def self.genre_count
		g_hash = {}
		g_count = 1
		g_sort = @@genres.sort
		g_hold = g_sort[0]
		g_sort.drop(1).each do |genre| # .drop ignores the first element
			if genre == g_hold
				g_count += 1
			else
				g_hash[g_hold] = g_count
				g_count = 1
				g_hold = genre
			end
		end
    g_hash[g_hold] = g_count # capture the last genre
		return g_hash
	end

  def self.artist_count
		a_hash = {}
		a_count = 1
		a_sort = @@artists.sort
		a_hold = a_sort[0]
		a_sort.drop(1).each do |artist| # .drop ignores the first element
			if artist == a_hold
				a_count += 1
			else
				a_hash[a_hold] = a_count
				a_count = 1
				a_hold = artist
			end
		end
		a_hash[a_hold] = a_count # capture the last artist
		return a_hash
	end

end
