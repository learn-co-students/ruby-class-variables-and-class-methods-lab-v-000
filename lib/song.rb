require "pry"

class Song
  attr_accessor :name, :artist, :genre

  # def name
  #   @name
  # end
  # def name=(name)
  #   @name = name
  # end

  @@count = 0
  @@genres = []
  @@artists = []
  @@unique_artists = []
  @@unique_genre = []
  @@artist_hash_final = {}
  @@genre_hash_final = {}

  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.each do |indiv_artist|
      @indiv_artist = indiv_artist
      if @@unique_artists.none? {|x| x == indiv_artist}
         @@unique_artists << @indiv_artist
      end
    end
    @@unique_artists
  end

  def self.genres
    @@genres.each do |indiv_genre|
      @indiv_genre = indiv_genre
      if @@unique_genre.none? {|x| x == indiv_genre}
         @@unique_genre << @indiv_genre
      end
    end
    @@unique_genre
  end

  def self.genre_count
      @@unique_genre.reverse.each do |unique_genre_item|
        array = []
        @@genres.each do |individual_genre|
          if individual_genre==unique_genre_item
            array << individual_genre
          end
          @individual_genre = unique_genre_item
        end
        @@genre_hash_final[@individual_genre]=array.count
      end
    @@genre_hash_final
  end


  def self.artist_count
      @@unique_artists.reverse.each do |unique_artists_item|
        array = []
        @@artists.each do |individual_artists|
          if individual_artists==unique_artists_item
            array << individual_artists
          end
          @individual_artists = unique_artists_item
        end
        @@artist_hash_final[@individual_artists]=array.count
      end
    @@artist_hash_final
  end


end
