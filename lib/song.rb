class Song
  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre

  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@artists << artist
    @@genres << genre

  end

  def self.count
    @@count
  end

  def self.artists
    temp_array = []
    @@artists.each do |artist|
      if !temp_array.include?(artist)
        temp_array << artist
      end
    end
    temp_array
  end

  def self.genres
    temp_array = []
    @@genres.each do |genre|
      if !temp_array.include?(genre)
        temp_array << genre
      end
    end
    temp_array
  end

  def self.genre_count
    temp_hash = {}
    @@genres.each do |genre|

      if temp_hash[genre] == nil
        temp_hash[genre] = 1
      else
        temp_hash[genre] += 1
      end

    end
    temp_hash
  end

  def self.artist_count
    temp_hash = {}
    @@artists.each do |artist|

      if temp_hash[artist] == nil
        temp_hash[artist] = 1
      else
        temp_hash[artist] += 1
      end

    end
    temp_hash
  end

end
