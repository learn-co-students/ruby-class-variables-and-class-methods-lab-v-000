
class Song

  @@count = 0
  @@genres = []
  @@artists = []

  attr_accessor :name, :artist, :genre

  

  def initialize(name, artist, genre)
    @genre = genre
    @artist = artist
    @name = name
    @@count += 1
    @@genres << genre
    # if !@@genres.include?(genre)
    #   @@genres << genre
    # end
    @@artists << artist
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
    ans = {}
    @@genres.each do |g|
      if ans.key?(g)
        ans[g] = ans[g] + 1
      else 
        ans[g] = 1
      end
    end
    ans
  end

  def self.artist_count
    ans = {}
    @@artists.each do |g|
      if ans.key?(g)
        ans[g] = ans[g] + 1
      else 
        ans[g] = 1
      end
    end
    ans
  end

end











