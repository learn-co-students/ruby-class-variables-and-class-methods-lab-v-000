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

  def self.genre_count
    #create a new hash for key vaue pairs of count and genre
    genre_count = {}
    # iterate through the genres
    @@genres.each do |genre|
      # if the genre is there add one to the key
      if genre_count[genre]
        genre_count[genre] += 1
      else
        #else add the new genre
        genre_count[genre] = 1
  end
end
#return genre count
genre_count
end

def self.artist_count
  artist_count = {}
  @@artists.each do |artist|
    if artist_count[artist]
      artist_count[artist] += 1
    else
      artist_count[artist] = 1
    end
  end
  artist_count
end

end
