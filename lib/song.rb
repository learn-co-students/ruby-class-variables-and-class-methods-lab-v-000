=begin
  Written by Naomi J Dennis
  Visit my Github: www.github.com/Naomi-Dennis
=end
require 'pry'
class Song
  attr_accessor :name, :artist, :genre

  @@artists = []
  @@genres = []
  @@count = 0

  @@detailed_genre_list = { }
  @@detailed_artists_list = { }

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << @artist
    @@genres << @genre
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.artists
    unique_artists = Array.new
    @@artists.each do | artist |
      if !unique_artists.include?(artist)
        unique_artists << artist
      end
    end
    unique_artists
  end

  def self.genres
    unique_genres = Array.new
    @@genres.each do | genre |
      if !unique_genres.include?(genre)
        unique_genres << genre
      end
    end
    unique_genres
  end

  def self.genre_count
    #for each genre elemnt in the genres list
    @@genres.each do | genre_name |
      ##is the genre already in the hash ?
      if @@detailed_genre_list.keys.include?(genre_name)
          ## yes, so increment the number
          @@detailed_genre_list[genre_name] += 1
      else
          ## no, so create the key and assign it a value of 1
        @@detailed_genre_list[genre_name] = 1
      end
    end
    ##return the hash
    @@detailed_genre_list
  end

  def self.artist_count
    @@artists.each do | artist_name |
      ##is the genre already in the hash ?
      if @@detailed_artists_list.keys.include?(artist_name)
          ## yes, so increment the number
          @@detailed_artists_list[artist_name] += 1
      else
          ## no, so create the key and assign it a value of 1
        @@detailed_artists_list[artist_name] = 1
      end
    end
    ##return the hash
    @@detailed_artists_list
  end

end
