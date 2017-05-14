require 'pry'
#OK SO IN INITIALIZE IS WHERE I ASSIGN INSTANCE VARIABLES
class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []

      def initialize(name, artist, genre)
      @@count+=1
      @name=name
      @artist=artist
      @genre=genre
      @@genres << genre
      @@artists << artist

      end

      def self.count
        @@count
      end

      def self.artists
        @@artists= @@artists.uniq
        #OK, so I need to find a method that will allow for filtering of repeats
      end

      def self.genres
        @@genres = @@genres.uniq
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

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist]
        artist_count[artist] += 1
      else
        artist_count[artist] = 1
      end
    end
    artist_count
  end

  end
