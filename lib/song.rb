class Song 

attr_accessor :name, :artist, :genre 

@@count = 0 
@@artists = []
@@genres = []

  
def initialize(name, artist, genre)
@name = name
@artist = artist
@genre = genre 

@@count +=1 

@@artists << artist 
@@genres  << genre 

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
new_hash = {}
@@genres.uniq.each do |genre_type|
  new_hash[genre_type] = 0 
end 
@@genres.each do |genre_type1|
  if new_hash.include?(genre_type1)
    new_hash[genre_type1]+=1 
  end 
end 
new_hash
end 

def self.artist_count
new_hash = {}
@@artists.uniq.each do |artist_name|
  new_hash[artist_name] = 0 
end 
@@artists.each do |artist_name1|
  if new_hash.include?(artist_name1)
    new_hash[artist_name1]+=1
end 
end 
new_hash 

end 
end 