class Song

  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre


  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end


  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.count
    @@count
  end

  def self.genre_count
    genre_count = @@genres.group_by{|i| i}.map{|k,v|[k, v.count]}
    genre_count.to_h
  end

  def self.artist_count
    artist_count = @@artists.group_by{|i| i}.map{|k,v|[k, v.count]}
    artist_count.to_h
  end

end
