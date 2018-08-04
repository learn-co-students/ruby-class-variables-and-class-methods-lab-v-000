class Song
  @@genres = []
  @@artists = []
  @@count = 0

  attr_accessor :name, :artist, :genre
  def initialize(song_name, artist, genre)
    @@count += 1
    @name = song_name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end
#.artists returns an array without duplicates...so do a check if it has it, in not push into the array
  def self.artists
    @@artists
  end

  def self.genres
    @@genres
  end

end
