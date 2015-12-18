class Song 
    attr_accessor :name, :artist, :genre
    @@count=0
   @@artists=[]
   @@genres=[]
    def initialize (name, artist, genre)
       @@count=@@count+1
        @@genres << genre
       @name=name
       @artist=artist
       @genre=genre
        @@artists << artist
    end
    def self.count
       return @@count 
    end
    def self.artists
        new_array=[]
        @@artists.each do |artist|
            if new_array.include?(artist)
                
            else
                new_array << artist
            end
        end
        return new_array
    end
    def self.genres
         new_array=[]
        @@genres.each do |genre|
            if new_array.include?(genre)
                
            else
                new_array << genre
            end
        end
        return new_array
    end
    def self.genre_count
             new_hash={}
         @@genres.each do |genre|
        if new_hash.keys.include?(genre)
        
        else 
        new_hash[genre]=0
        end
        new_hash[genre]+=1
         end
    return new_hash
    end
    def self.artist_count
             new_hash={}
         @@artists.each do |artist|
        if new_hash.keys.include?(artist)
        
        else 
        new_hash[artist]=0
        end
        new_hash[artist]+=1
         end
        return new_hash
    end
    

    
    
end