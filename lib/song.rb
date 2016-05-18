class Song

  @@count = 0

  @@genres = []

  @@artists = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @@count += 1
    @@genres << genre
    @@artists << artist
    @name = name
    @artist = artist
    @genre = genre
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



  def genre_count
    hash = {}  
    @@genres.each do |genre| 
      if @@genres.include? genre
        hash[genre] += 1
      else hash[genre] = 1
      end
    end
    hash
  end



  def artist_count
  end



end
