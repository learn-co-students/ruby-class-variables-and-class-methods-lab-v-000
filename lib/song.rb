class Song

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @@count+=1
    @@artists << artist
    @@genres << genre
    @name=name
    @artist= artist
    @genre = genre
  end

  def self.count
    @@count
  end

  def name=name
    @name = name
  end

  def name
    @name
  end

def artist=artist
  @artist = artist
end

def artist
  @artist
end

def genre= genre
  @genre = genre
end

def genre
  @genre
end

def self.artists
  @@artists.uniq
end

def self.genres
  @@genres.uniq
end

def self.genre_count
  hash = {}
  @@genres.each do |gen|
  if hash.keys.include?(gen) == true
    hash[gen] += 1
  else
    hash[gen]=1
    end
  end
  return hash
end

def self.artist_count
  num_songs = {}
  @@artists.each do |songs|
  if num_songs.keys.include?(songs) == true
    num_songs[songs] += 1
  else
    num_songs[songs]= 1
  end
end
  return num_songs
end





end
