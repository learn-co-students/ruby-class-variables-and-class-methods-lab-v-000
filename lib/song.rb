require "pry"

class Song
attr_accessor :name, :artist, :genre

@@count = 0
@@artist_count = {}
@@genre_count = {}
@@genres = []
@@artists = []


  def initialize(name, artist, genre)
    @name=name
    @artist=artist
    @@artists << artist
    @genre=genre
    @@genres << genre
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists = @@artists.uniq
  end

  def self.genres
    @@genres = @@genres.uniq
  end

#@@genres = [pop, rap, rap]
#genre_count
  #need to return {pop =>1, rap => 2}

  def self.genre_count
    @@genre_count = @@genres.group_by{|genre| genre}.map{|k, v| [k, v.count]}.to_h
  end

  def self.artist_count
    @@artist_count = @@artists.group_by{|artist| artist}.map{|k, v| [k, v.count]}.to_h
  end

end
