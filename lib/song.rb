class Song

attr_accessor :name, :artist, :genre

@@count = 0
@@genres = []
@@artists = []

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

def self.genres
  @@genres.uniq
end

def self.artists
  @@artists.uniq
end

def self.summary_hash(array)
  histogram = {}
  array.each do |value|
    if histogram[value] then histogram[value] += 1
    else histogram[value] = 1
    end
  end
  histogram
end

def self.genre_count
summary_hash(@@genres)
end

def self.artist_count
summary_hash(@@artists)
end

end
