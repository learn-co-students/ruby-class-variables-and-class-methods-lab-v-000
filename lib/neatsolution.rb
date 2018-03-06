class Song
 attr_reader :name, :artist, :genre

 @@count = 0
 @@artists = []
 @@genres = []
 @@artist_count = {}
 @@genre_count = {}

  def initialize(title, artist, genre)
    @name = title
    @artist = artist
    @genre = genre
    @@count += 1
    # if @@artists.include?(artist)
    #   return "Already here!"
    # else
    @@artists << @artist
    @@genres << @genre
      # @@artist_count += 1
    # end
    if @@genre_count[@genre]
      @@genre_count[@genre] += 1
    else
      @@genre_count[@genre] = 1
      # @@genres << genre
    end
    if @@artist_count[@artist]
      @@artist_count[@artist] += 1
    else
      @@artist_count[@artist] = 1
      # @@genres << genre
    end
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq!
    # unique_genres = []
    # @@genres.each do |genre|
    #   if !unique_genres.include?(genre)
    #     unique_genres << genre
    #   end
    # end
    # unique_genres
  end

  def self.artists
    @@artists.uniq!
    # @@artists.each do |artist|
    #   if @@artists.include?(artist)
    #     @@artists.delete(artist)
    #   end
    # end
    # @@artists
  end

  def self.genre_count
    @@genre_count
  end

  def self.artist_count
    @@artist_count
  end
end
