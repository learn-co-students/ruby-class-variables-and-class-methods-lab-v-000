 require 'pry'

 class Song
  attr_accessor :name , :artist , :genre

  @@song = Hash.new
  @@artists = []
  @@genres = []
  @@count = 0


    def self.count
      @@count
    end

    def self.artists
      @@artists.uniq!
    end

    def self.genres
      @@genres.uniq
    end

    def self.genre_count
      genre_count = Hash.new
      @@genres.each do |i|
        if genre_count[i]
          genre_count[i] +=1
        else
          genre_count[i] = 1
        end
      end
      genre_count
    end

    def self.artist_count
      artist_count = Hash.new
      @@artists.each do |i|
        if artist_count[i]
          artist_count[i] +=1
        else
          artist_count[i] = 1
        end
      end
      artist_count
    end

    def initialize (name, artist, genre)
      @@count +=1
      self.name = name
      self.artist = artist
      self.genre = genre
      @@artists << artist
      @@genres << genre
      @@song[name]=[artist,genre]
    end

 end
