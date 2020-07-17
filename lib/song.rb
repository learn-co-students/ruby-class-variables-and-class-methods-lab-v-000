require 'pry'
class Song
  @@count=0
  @@genres= []
  @@artists= []
  @@artist_count= {}
  @@genre_count= {}
  attr_accessor :name
  attr_accessor :artist
  attr_accessor :genre
  def initialize(name,artist,genre)
    @name=name
    @artist=artist
    @genre=genre
    @@genres << genre
    @@artists << artist
    @@count += 1
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
    @@genres.each do |genre|
      if @@genre_count.has_key?(genre) == false
        @@genre_count[genre] = 1
      else #increment by 1
        @@genre_count[genre] += 1
      end
    end
    return @@genre_count
  end
  def self.artist_count

    @@artists.each do |artist|
      if @@artist_count.has_key?(artist) == false
        @@artist_count[artist] = 1
      else #increment by 1
        @@artist_count[artist] += 1
      end
    end
    return @@artist_count
  end

end
