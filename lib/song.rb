class Song
attr_accessor :name, :artist, :genre
attr_writer

@@count = 0
@@artists = []
@@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count+=1
    @@artists << artist
    @@genres << genre
  end

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
    Hash[*@@genres.group_by{|v| v}.flat_map{|k,v| [k,v.size]}]
  end

  def self.artist_count
    Hash[*@@artists.group_by{|v| v}.flat_map{|k,v| [k,v.size]}]
  end
end
