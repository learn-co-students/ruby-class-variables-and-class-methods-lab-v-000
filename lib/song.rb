class Song
attr_accessor :name, :artist, :genre

  @@count = 0
  @@name = []
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}
  #@@artists_songs = {}

  def initialize(name, artist, genre)
=begin
    @@artists_songs[artist] ||= {}
    @@artists_songs[artist][genre] ||= []
    @@artists_songs[artist][genre] << name
=end
    @@artists << artist
    @@genres << genre

    @@genre_count[genre] ||= 0
    @@genre_count[genre]+=1

    @@artist_count[artist] ||= 0
    @@artist_count[artist]+=1

    @name = name
    @artist = artist
    @genre = genre

    @@count+=1
  end

  def self.count
    @@count
  end

  def name
    @name
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genre_count.keys
  end

  def self.genre_count
    @@genre_count
  end

  def self.artist_count
    @@artist_count
  end

end

asdf = Song.new("monster", "jay-z", "rap")
fdas = Song.new("chickensoup", "nicki minaj", "rap")
adff = Song.new("fatso", "jd", "r&b")
puts Song.genre_count
puts Song.artist_count
