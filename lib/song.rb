class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count+=1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq!
  end

  def self.artists
    @@artists.uniq!
  end

  def self.artist_count
    artist_count = {} #artist_count hash
    @@artists.each do |artist|
      if artist_count[artist]
        artist_count[artist]+=1
      else
        artist_count[artist]=1
      end
    end
    artist_count #returns artist_count hash where the keys are the names of each artist and the key points to a value that is the number of songs that have that artist.
  end

  def self.genre_count
    genre_count = {} #genre_count hash
    @@genres.each do |genre| #iteration over the genre array
      if genre_count[genre] # checks if the hash already contains a key of a particular genre
        genre_count[genre]+=1 # if genre is present in the hash, an increment of 1 is added to the key.
      else
        genre_count[genre]=1 # if genre is not present in the hash already, a new key/valye pair is created.
      end
    end
    genre_count #returns genre_count hash where the keys are the names of each genre and the key points to a value that is the number of songs that have that genre.
  end
end
