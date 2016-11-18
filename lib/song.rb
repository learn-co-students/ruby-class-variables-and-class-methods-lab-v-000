class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []




  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
    @@count += 1
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
    genre_count = {}
    @@genres.each do |genre|
      if
        genre_count[genre]
      genre_count[genre] += 1
    else
      genre_count[genre] = 1
    end
  end
    genre_count
    end

def self.artist_count
  artist_count = {}
  @@artists.each do |artists|
    if artist_count[artists]
      artist_count[artists] += 1
    else artist_count[artists] = 1
    end
  end
  artist_count
end
end
