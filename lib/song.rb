require 'pry'
class Song
  attr_reader :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  class << self
    def count
      @@count
    end
  
    def genres
      @@genres.uniq
    end
  
    def artists
      @@artists.uniq
    end
  
    def genre_count
      group_count(@@genres)
    end

    def artist_count
      group_count(@@artists)
    end

    private
    def group_count(ary)
      ary.group_by {|x| x }.map do |k,v| 
        [k, v.length]
      end.to_h
    end
  end

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end
  
end