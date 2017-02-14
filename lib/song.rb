require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []
  #@@genre_count_hash = {}
  #@@artist_count_hash = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
#    @@genre_count_hash[name] = genre
#    @@artist_count_hash[name] = artist
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
    final = Hash.new(0)
    @@genres.each do |name|
      final[name] += 1
    end
    final
  end

#  def self.genre_count
#    final = {}
#    @@genre_count_hash.each do |k_and_v| 
#      final[k_and_v[1]] ||= []
#      final[k_and_v[1]] << 1
#    end
#    final.each{|key,val| final[key] = val.length}
#  end

  def self.artist_count
    final = Hash.new(0)
    @@artists.each do |name|
      final[name] += 1
    end
    final
  end
end

# def self.artist_count
#    final = {}
#    @@artist_count_hash.each do |k_and_v| 
#      final[k_and_v[1]] ||= []
#      final[k_and_v[1]] << 1
#    end
#    final.each{|key,val| final[key] = val.length}
#  end
#end
