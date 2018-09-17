
require 'pry'

class Song

  @@count = 0
  @@genres = Array.new
  @@artists = Array.new


  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@artists.push(artist)
    @@genres.push(genre)

  end

  def self.artists
    #unique_artist_array = Array.new


=begin
    @@artists.each do |artist|
      #binding.pry
      if unique_artist_array.include?(artist) == false
        unique_artist_array.push(artist)
      end
    end
=end

    unique_artist_array = @@artists.uniq

  end

  def self.count
    @@count
  end

  def self.genres
    unique_genre_array = @@genres.uniq
  end

  def self.genre_count
    genre_count = Hash.new

    @@genres.each do |genre|
        if genre_count.has_key?(genre) == false
          genre_count[genre] = @@genres.count(genre)
          #binding.pry
        end
      end
      genre_count

  end

  def self.artist_count
    artist_count = Hash.new

    @@artists.each do |artist|
        if artist_count.has_key?(artist) == false
          artist_count[artist] = @@artists.count(artist)
          #binding.pry
        end
      end
      artist_count

  end



  def artist
    @artist
  end

  def genre
    @genre
  end

  def name
    @name
  end


end
