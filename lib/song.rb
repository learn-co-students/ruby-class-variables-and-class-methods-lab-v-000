require 'pry'

class Song
  attr_accessor :name, :artist, :genre

    @@song_genre = []
    @@song_count = 30
    @@song_artist = []

  def initialize(song_name, artist, genre)
    @song_name = song_name
    @artist = artist
    @genre = genre
    @@song_count += 1
  end

def self.count
  @@song_count
end

def self.genre
  @@song_genre << genre unless @@song_genre.include?(genre)
end

def self.artist
  @@song_artist
end

end
