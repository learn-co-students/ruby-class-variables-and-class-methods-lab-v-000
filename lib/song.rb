class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artist_list =[]
  @@genre_list = []
  @@genre_count = {}
  @@artist_count = {}
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
    @@genre_list << genre
    @@artist_list << artist

    @@artist_list.each do |artist|
      if artist_count[artist]
        artist_count[artist] += 1 
      else
        artist_count[artist] = 1
      end
    end

    @@genres_count.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1 
      else
        genre_count[genre] = 1
      end
    end
  end

  def self.count
    @@count
  end

  def self.artists
    @@artist_list.uniq
  end

  def self.artist_count
    @@artist_count
  end

  def self.genres
    @@genre_list.uniq
  end
  
  def self.genre_count
    @@genre_count
  end
  
end

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist]
        artist_count[artist] += 1 
      else
        artist_count[artist] = 1
      end
    end
    artist_count
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1 
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end
end
