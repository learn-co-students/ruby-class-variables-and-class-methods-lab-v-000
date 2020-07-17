class Song

  @@count = 0
  @@genres= []
  @@artists=[]

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1

    # if @@genres.include?(genre) == false
      @@genres << genre
    # end

    # if @@artists.include?(artist) == false
      @@artists << artist
    # end

  end

  attr_accessor :name, :artist, :genre

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
    @@genre_count = {}
    @@genres.each do |genre|
      if @@genre_count.has_key?(genre)
        @@genre_count[genre] += 1
      else @@genre_count[genre]=1
      end
    end
    return @@genre_count
  end

  def self.artist_count
    @@artist_count = {}
    @@artists.each do |artist|
      if @@artist_count.has_key?(artist)
        @@artist_count[artist] += 1
      else @@artist_count[artist]=1
      end
    end
    return @@artist_count
  end


end
