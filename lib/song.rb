require 'pry'
class Song
  attr_accessor :name, :artist, :genre
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
    #binding.pry
  end
  @@count = 0
  @@artists = []
  @@genres = []

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
    #binding.pry
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
   genre ||= {}
   @@genres.each do |song_genre|
     if genre.include?(song_genre)
       genre[song_genre] += 1
     else
       genre[song_genre] = 1
     end
  end
   genre
end

  def self.artist_count
    artist ||= {}
    @@artists.each do |artist_name|
      if artist.include?(artist_name)
        artist[artist_name] +=1
      else
        artist[artist_name] = 1
      end
    end
    artist
  end
end
