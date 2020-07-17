require 'pry'

class Song

  @@count = 0
  @@artists = []
  @@genres = []
  @@songs = []
  @@artist_count = {}
  @@genre_count = {}
  @@genre_counter = 0
  @@artist_counter = 0



  attr_accessor :name, :artist, :genre

  def initialize(songName, artist, genre)
    @@count += 1
    @songName = songName
    @artist = artist
    @genre = genre

    # if !@@artists.include?(@artist)
      @@artists << @artist
    # elsif !@@genres.include?(@genre)
      @@genres << @genre
    # elsif !@@songs.include?(@songName)
      @@songs << @songName
    # end

      # new_array = []
      # @@genres.each do |genre|
      #   if @@genres.include?(@genre)
      #     new_array << genre
      #   end
      # end
      #
      # @@genre_count[@genre] = new_array.length



      @@artist_count[@artist] ||= 0
      @@artist_count[@artist] += 1

      @@genre_count[@genre] ||= 0
      @@genre_count[@genre] += 1


  end

  def name
    @songName
  end

  def artist
    @artist
  end

  def genre
    @genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    @@genre_count.sort.to_h
  end

  def self.artist_count
    @@artist_count.sort.to_h
  end

end
