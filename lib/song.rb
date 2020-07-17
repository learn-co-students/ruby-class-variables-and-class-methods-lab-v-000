class Song
    
    attr_accessor :name, :artist, :genre
    
    @@count = 0
    @@artists = []
    @@artist_count = 0
    @@genres = []
    @@genre_count = 0
    
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        
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
    
    def self.artist_count
      artistHash = {}
      artistCounter = []
      
      @@artists.each do |artist|
          if !artistCounter.include?(artist)
            artistCounter << artist
            songCount = @@artists.select{|i| i == artist}.length
            artistHash[artist] = songCount
          end
      end
      
      artistHash
    end
    
    def self.genre_count
      genreHash = {}
      genreCounter = []
      
      @@genres.each do |genre|
          if !genreCounter.include?(genre)
            genreCounter << genre
            songCount = @@genres.select{|i| i == genre}.length
            genreHash[genre] = songCount
          end
      end
      
      genreHash
    end
end