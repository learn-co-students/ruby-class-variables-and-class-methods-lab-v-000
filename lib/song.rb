class Song
  attr_accessor :name, :artist, :genre

  @@count = 0  # total amount of songs, ever.
  @@artists = [] # array of all shoveled in artists
  @@genres = [] # array of all shoveled in genres

  @@genre_count = {}
  @@artist_count = {}

  def initialize(name, artist, genre)
# set instance variables to equal the arguments given
# this allows it to be accessed: new_song.name => "this is a new song!"
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
    @@genres.each do |genre, count|
      @@genre_count[genre] ||= 0
      @@genre_count[genre] += 1
    end
    @@genre_count # <---- implicit return value
  end

  def self.artist_count
    @@artists.each do |artist, count|
      @@artist_count[artist] ||= 0
      @@artist_count[artist] += 1
    end
    @@artist_count # <---- implicit return value
  end

end # <---- method end
