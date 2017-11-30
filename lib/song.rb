require 'pry'

class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name,artist,genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def artists(artist)
    if @@artists.uniq
      # !@@artists.include?(artist)
      @@artist << artist
    end
  end

  def self.genres
    @@genres.uniq
  end

  def genres(genre)
    if @@genres.uniq
    # !@@genres.include?(genre)
      @@genres << genre
    end
  end

  def self.genre_count
    genre_hash = {}
    @@genres.each do |genre|

      if genre_hash[genre]
        genre_hash[genre] += 1
      else
        genre_hash[genre] = 1
      end

    end
    genre_hash
  end

  def self.artist_count
    artist_hash = {}
    @@artists.each do |artist|
      if artist_hash[artist]
        artist_hash[artist] += 1
      else
        artist_hash[artist] = 1
      end
    end
    artist_hash
  end

  # def self.artist_count
  #     artist_count = {}
  #     @@artists.each do |artist|
  #       if artist_count[artist]
  #         artist_count[artist] += 1
  #       else
  #         artist_count[artist] = 1
  #       end
  #     end
  #     artist_count
  #   end


end
