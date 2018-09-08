require 'pry'
class Song
  @@count = 0
  @@artists = []
  @@genres = []
  @@artists_count = 0
  @@genres_count = 0


  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name= name
    @artist= artist
    @genre= genre
    @@count += 1
    @@artists << artist
    @@genres << genre
    @@artists_count += 1
    @@genres_count += 1


  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq!
  end


  def self.genres
    @@genres.uniq!
  end


  def self.artist_count
    @@artist.each do |genres|
      array[genre] = artist.genre.count
    end
  end



  def self.genre_count
    hash = {}
    @@genres.each do |genre|

      hash[genre] = genre.song.count

    end

  end
end


    #h = Hash[ *f.collect { |v| [v] }.flatten ]
    # def self.genre_count
    #
    # result = {}
    # @@genres.collect do |genre, song|
    #   result[genre] = [song].flatten
    # end
    # result
