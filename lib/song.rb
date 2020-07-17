class Song
  attr_accessor  :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  @@artist_count = {}
  @@genre_count = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

# Count: Class method READER total number of songs in class
  def self.count
    @@count
  end

# Artists:  Class method returns array listing all artists
  def self.artists
    @@artists.uniq
  end

# Genres: Class method returns array list of all genres
  def self.genres
		@@genres.uniq
  end

# check the @@genres array to see if correct
def self.see_genres
	@@genres
end

# artists count: Class method returns hash
def self.artist_count
	a_count = {}
	@@artists.each do |artist|
		if a_count[artist]
	   a_count[artist] +=1
		else
			a_count[artist] = 1
  	end
	end
	@@artist_count = a_count
  @@artist_count
end


# => genre names as keys; count of all songs in genre as values
def self.genre_count
	g = {}
  	@@genres.each do |genre|
      if g[genre]
         g[genre] += 1
      else
         g[genre] = 1
      end
    end
    @@genre_count = g
    @@genre_count
  end

end
