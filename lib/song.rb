class Song
  attr_accessor :name, :artist, :genre
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  @@count = 0
  @@artists = []
  @@genres = []

  def self.count
    return @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end


  def self.genre_count
    what = {}
    @@genres.each do |key|
      if what[key]
        what[key] += 1
      else
        what[key] = 1
      end
    end
    return what
  end


    def self.artist_count
      what = {}
      @@artists.each do |key|
        if what[key]
          what[key] += 1
        else
          what[key] = 1
        end
      end
      return what
    end

end
