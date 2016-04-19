require 'pry'

class Song

  attr_accessor :new, :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@genres << genre
    @@artists << artist
    @@count +=1
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

  # def self.genre_count
  #   # binding.pry
  #   hash_genre_count = {}
  #   compare_genre = " "
  #   count = 0

  #   @@genres.uniq.each do |genre|
  #      if compare_genre == genre
  #       hash_genre_count[genre] = count+=1
  #     else
  #       hash_genre_count[genre] = 1
  #     end
  #   end
  #   hash_genre_count
  # end

    def self.artist_count
    artist_count = {}
    @@artists.each do |singer|
      if artist_count[singer]
        artist_count[singer] += 1
      else
        artist_count[singer] = 1
      end
    end
    artist_count
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
