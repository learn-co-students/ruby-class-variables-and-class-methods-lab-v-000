class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name= name
    @artist= artist
    @genre= genre
    @@count += 1
    @@genres << genre
    @@artists << artist
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

def self.genre_count
    results = {}
    @@genres.each do |genre|
      if results[genre] == nil
        results[genre] = 1
      else
        results[genre] = results.fetch(genre) + 1
      end
    end
    results
  end

  def self.artist_count
      results = {}
      @@artists.each do |artist|
        if results[artist] == nil
          results[artist] = 1
        else
          results[artist] = results.fetch(artist) + 1
        end
      end
      results
    end

end
