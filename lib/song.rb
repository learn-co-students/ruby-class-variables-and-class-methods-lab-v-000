require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.artists
    unique_artists = []
     @@artists.each do |artist|
       if unique_artists.include?(artist)
       else
         unique_artists << artist
       end
     end
     unique_artists
  end

  def self.genres
    unique_genres = []
     @@genres.each do |genre|
       if unique_genres.include?(genre)
       else
         unique_genres << genre
       end
     end
     unique_genres
  end

  def self.genre_count
    genres_count = {}
    @@genres.each do |genre|
      if !genres_count.include?(genre)
        genres_count[genre] = 1
      else
        genres_count[genre] +=1
      end
    end
    genres_count
  end

  def self.artist_count
    artists_count = {}
    @@artists.each do |artist|
      if !artists_count.include?(artist)
        artists_count[artist] = 1
      else
        artists_count[artist] +=1
      end
    end
    artists_count
  end

end
