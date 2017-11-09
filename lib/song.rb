
class Song
attr_accessor :name, :artist, :genre

@@count = 0
@@artists = []
@@genres = []

def initialize(name, artist, genre)
@name=name
@artist=artist
@genre=genre
@@count += 1
@@artists << artist
@@genres << genre
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
hash= {}
@@genres.each do |genre|
  if hash[genre] != nil
hash[genre] += 1
else
  hash[genre] = 1
end
end
hash
end

def self.artist_count
  artHash = {}
  @@artists.each do |artists|
    if artHash[artists] != nil
      artHash[artists] += 1
    else
      artHash[artists] = 1
    end
  end
  artHash




end

end
