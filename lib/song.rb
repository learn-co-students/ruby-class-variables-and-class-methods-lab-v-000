class Song
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}

  attr_reader :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    #if !@@artists.include? artist
      @@artists << artist
  #  end
  #  if !@@genres.include? genre
      @@genres << genre
  #  end
  end

  def self.count
    @@count
  end

  def self.artists
    unique = []
    @@artists.each do |artist|
      if !unique.include? artist
        unique << artist
      end
    end
    unique
  end

  def self.genres
    unique = []
    @@genres.each do |genre|
      if !unique.include? genre
        unique << genre
      end
    end
    unique
  end

  def self.genre_count
    @@genres.each do |genre|
      if @@genre_count.keys.include? genre
        @@genre_count[genre] += 1
      else
        @@genre_count[genre] = 1
      end
    end
    @@genre_count
  end

  def self.artist_count
    @@artists.each do |artist|
      if @@artist_count.keys.include? artist
        @@artist_count[artist] += 1
      else
        @@artist_count[artist] = 1
      end
    end
    @@artist_count
  end
end
