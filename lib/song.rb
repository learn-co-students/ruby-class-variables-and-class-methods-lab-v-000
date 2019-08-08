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

# found this topic on Stackoverflow for .inject. Tested it on the .genre and .artist_count - https://stackoverflow.com/questions/19963001/create-hash-from-array-and-frequency
  def self.genre_count
    @@genres.inject(Hash.new(0)) {|hash,word| hash[word] += 1; hash }
  end
  def self.artist_count
    @@artists.inject(Hash.new(0)) {|hash,word| hash[word] += 1; hash }
  end
end
