class Song
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}
  attr_accessor :name, :artist, :genre
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist

  end
  def self.genre_count
    @@genres.each do |word|
      ary = @@genres.select do |it|
          it == word
        end
        if !@@genre_count.include?(word)
          @@genre_count[word] = ary.length
        end
      end
      @@genre_count
    end

    def self.artist_count
      @@artists.each do |word|
        ary = @@artists.select do |it|
            it == word
          end
          if !@@artist_count.include?(word)
            @@artist_count[word] = ary.length
          end
        end
        @@artist_count
      end

  def self.count
    @@count
  end
  def self.genres
    @@genres = @@genres.uniq
  end
  def self.artists
    @@artists = @@artists.uniq
  end
end
