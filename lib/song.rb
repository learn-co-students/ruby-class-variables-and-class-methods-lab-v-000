class Song
  @@count = 0
  @@artists = []
  @@genres = []
  
  attr_accessor :name, :artist, :genre
  
  def initialize(song_name, song_artist, song_genre)
    @@count += 1
    @name = song_name
    @artist = song_artist
    @@artists << song_artist
    #@@artists[song_artist] += 1
    @genre = song_genre
    @@genres << song_genre
    #@@genres[song_genre] += 1
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    new_artist_array = []
    @@artists.each do |artist|
      new_artist_array << artist if !new_artist_array.include?(artist)
    end
    return new_artist_array
  end
  
  def self.genres
    new_genre_array = []
    @@genres.each do |genre|
      new_genre_array << genre if !new_genre_array.include?(genre)
    end
    return new_genre_array
  end
  
  def self.genre_count
    new_genre_hash = {}
    @@genres.each do |genre|
      new_genre_hash[genre] = 0 if !new_genre_hash.keys.include?(genre)
      new_genre_hash[genre] += 1
     end
     return new_genre_hash
  end
  
  def self.artist_count
    new_artist_hash = {}
    @@artists.each do |artist|
      new_artist_hash[artist] = 0 if !new_artist_hash.keys.include?(artist)
      new_artist_hash[artist] += 1
    end
    return new_artist_hash
  end
end