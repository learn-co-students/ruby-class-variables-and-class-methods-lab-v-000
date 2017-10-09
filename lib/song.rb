require 'pry'

class Song

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  @@count = 0

  def self.count
    @@count
  end

  @@genres = []

  def self.genres
    @@genres = @@genres.uniq
  end

  @@artists = []

  def self.artists
    @@artists = @@artists.uniq
  end

  def self.genre_count
    @@genre_count = {}

    @@genres.group_by(&:itself).each {|k,v| @@genre_count[k] = v.count}

    return @@genre_count
  end

  def self.artist_count
    @@artist_count = {}

    @@artists.group_by(&:itself).each {|k,v| @@artist_count[k] = v.count}

    return @@artist_count
  end
end

#  f = genre.count
#  @@genre_count.has_key? ? @@genre_count[genre] << f : @@genre_count[genre] = genre <- straight didnt work (arg error, wrong number of arguements)

# @@genres.inject(@@genre_count) {|total, e| total[e] += 1; total} <-no method error, "NoMethodError:#  undefined method `+' for nil:NilClass"

# @@genres.each {|genre| @@genre_count[genre] += 1 } <-no method error, "NoMethodError:#  undefined method `+' for nil:NilClass"

# @@genres.group_by(&:itself).each {|k,v| @@genre_count[k] = v.count} <-got hash back but   expected: {"pop"=>1, "rap"=>2} got: {"rap"=>["rap", "rap"], "pop"=>["pop"]}; worked in pry but not outside of it which gave me the idea to put it as a return

# @@genre_count[@@genres.group_by{|i| i}.map{|k,v| [k,v.size]}]
