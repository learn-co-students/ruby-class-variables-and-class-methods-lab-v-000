class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []
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
  def self.genres
    new_array = []
    for x in 0..(@@count-1)
      if !(new_array.include?(@@genres[x]))
        new_array << @@genres[x]
      end
    end
    new_array
  end
  def self.artists
    new_array = []
    for x in 0..(@@count-1)
      if !(new_array.include?(@@artists[x]))
        new_array << @@artists[x]
      end
    end
    new_array
  end
  def self.genre_count
    hash = {}
    for x in 0..(@@count-1)
      if !(hash.has_key?(@@genres[x]))
        hash[@@genres[x]] = 1
      else
        hash[@@genres[x]] += 1
      end
    end
    hash
  end

  def self.artist_count
    hash = {}
    for x in 0..(@@count-1)
      if !(hash.has_key?(@@artists[x]))
        hash[@@artists[x]] = 1
      else
        hash[@@artists[x]] += 1
      end
    end
    hash
  end
end
