class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  @@genres = []
  
  
  def initialize(name, artist, genre)
    @@count += 1
    @@artists << artist
    @@genres << genre
    @name = name
    @artist = artist
    @genre = genre
  end
  
  class << self
    def count
      @@count
    end
    
    def artists
      @@artists.uniq
    end
    
    def genres
      @@genres.uniq
    end
    
    def genre_count
      genre_histogram = Hash.new
      
      iterate_to_histogram(@@genres, genre_histogram)
      genre_histogram
    end
    
    def artist_count
      artist_histogram = Hash.new
      
      iterate_to_histogram(@@artists, artist_histogram)
      artist_histogram
    end
    
    def histogram_maker(hash, key)
      hash[key].nil? ? hash[key] = 1 : hash[key] += 1
    end
    
    def iterate_to_histogram(array, hash)
      array.each { |i| histogram_maker(hash, i) }
    end    
    
    protected :histogram_maker, :iterate_to_histogram
  end
  
end