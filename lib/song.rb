class Song
  attr_accessor :name, :artist, :genre

  def initialize(song_name, artist, genre)
    @name = song_name
    @artist = artist
    @genre = genre

    @@count += 1
    @@artists << artist
    @@genres << genre

  end



  @@count = 0
  @@artists = []
  @@genres = []
  @@genres_count = {}

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    @@genres.group_by{ |v| v }.map{ |k, v| [k, v.size] }.to_h
  end

  def self.artist_count
    @@artists.group_by{ |v| v }.map{ |k, v| [k, v.size] }.to_h
  end

end
