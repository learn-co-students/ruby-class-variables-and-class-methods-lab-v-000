class Song
  attr_accessor :name, :artist, :genre
  @@count =0
  @@genres =[]
  @@artists=[]
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count()
    @@count
  end

  def self.genres()
   uniquegenres =@@genres
   uniquegenres.uniq
  end

  def self.genre_count()
    genre_hist = {}
    @@genres.each do |element|
      if !genre_hist.has_key?(element)
          genre_hist[element] =1
      else
          genre_hist[element] +=1
      end
    end
    genre_hist
  end

  def self.artists()
    uniqueartists = @@artists
    uniqueartists.uniq
    end

  def self.artist_count()
    artist_hist = {}
    @@artists.each do |element|
      if !artist_hist.has_key?(element)
          artist_hist[element] =1
      else
          artist_hist[element] +=1
      end
    end
    artist_hist
  end
end
