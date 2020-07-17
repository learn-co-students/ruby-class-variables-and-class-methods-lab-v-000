class Song

  @@count = 0
  @@artists = []
  @@genres = []
  def initialize(name, artist, genre)
    @name = name
    @artist  = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def name
    @name
  end

  def artist
    @artist
  end

  def genre
    @genre
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

  def self.artist_count
    myhash = {}
    @@artists.each do |artist|
      if myhash[artist] != nil
        myhash[artist] += 1
      else
        myhash[artist] = 1
      end
    end
    myhash
  end

  def self.genre_count
    myhash = {}
    @@genres.each do |genre|
      if myhash[genre] != nil
        myhash[genre] += 1
      else
        myhash[genre] = 1
      end
    end
    myhash
  end
end