class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@unique_genres = []
  @@artists = []
  @@unique_artists = []
  @@genre_count = {}
  @@artist_count = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << @genre
    @@artists << @artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.each do |genre|
      if @@unique_genres.include?(genre) == false
        @@unique_genres << genre
      end
    end
    @@unique_genres
  end

  def self.artists
    @@artists.each do |artist|
      if @@unique_artists.include?(artist) == false
        @@unique_artists << artist
      end
    end
    @@unique_artists
  end

  def self.genre_count
    @@genres.each do |genre|
      if @@genre_count.include?(genre) == false
        @@genre_count[genre]= 1
      elsif @@genre_count.include?(genre) == true
        @@genre_count[genre]+=1
      end
    end
    @@genre_count
  end

  def self.artist_count
    @@artists.each do |artist|
      if @@artist_count.include?(artist) == false
        @@artist_count[artist]= 1
      elsif @@artist_count.include?(artist) == true
        @@artist_count[artist]+=1
      end
    end
    @@artist_count
  end
end
