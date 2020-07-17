require 'pry'

  class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = [ ]
  @@artists = [ ]
  @@genre_count = { }
  @@artist_count = { }

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    # unless @@genre.include?(genre)
    @@genres << genre
    @@artists << artist
    @@count += 1
    #end
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
      if @@genre_count.has_key?(genre)
        @@genre_count[genre] +=1
      else
          @@genre_count[genre] = 1
      end
    end
    @@genre_count
  end
  # @@genre_count = Hash.new { |@@genre, key| hash[key] = @@genre.count }
    # @@genre_count => :@@genre[1] => []

  # h = Hash.new { |h, k| h[k] = [] }
  # h[:a]        # => {:a=>[]}
  # h[:b] << 123 # => {:a=>[], :b=>[123]}

  # def self.artist_count
  #   Hash.new { |hash, key| hash[key] = @@artist.count }
  # end

  def self.artist_count
    @@artists.each do |genre|
      if @@artist_count.has_key?(genre)
        @@artist_count[genre] +=1
      else
          @@artist_count[genre] = 1
      end
    end
    @@artist_count
  end
end
