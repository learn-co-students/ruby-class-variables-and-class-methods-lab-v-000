class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @@count += 1
    @genre = genre
    @artist = artist
    @name = name
    @@genres<< genre
    @@artists<< artist
  end

  def self.count
    @@count
  end

  def self.genres
    genre_list=[]
    @@genres.each{|genre| genre_list << genre unless genre_list.include?(genre)}
    genre_list
  end

  def self.artists
    artist_list=[]
    @@artists.each{|artist| artist_list << artist unless artist_list.include?(artist)}
    artist_list
  end

  def self.artist_count
    @@artists.each do |artist|
      @@artist_count[artist] = @@artists.count(artist)
    end
    @@artist_count
  end

  def self.genre_count
    @@genres.each do |genre|
      @@genre_count[genre] = @@genres.count(genre)
    end
    @@genre_count
  end
end
