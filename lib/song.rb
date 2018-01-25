class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << @artist
    @genre = genre
    @@genres << @genre
    @@count+=1
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres = @@genres.uniq
  end

  def self.artists
    @@artists = @@artists.uniq
  end

  def self.genre_count
    genre_count = {}
    @@genres.each do |song|
      if not genre_count.include?(song)
        genre_count[song] = 1
      else
        genre_count[song]+=1
      end
    end
    genre_count
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |person|
      if not artist_count.include?(person)
        artist_count[person] = 1
      else
        artist_count[person]+=1
      end
    end
    artist_count    
  end
end