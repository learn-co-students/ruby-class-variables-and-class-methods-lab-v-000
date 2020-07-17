class Song
  attr_accessor :name, :artist, :genre

  ##############
  @@count  =  0
  @@genres =  [] #class variables, as incrementors/pushers#
  @@artists = []
  ##############

  def initialize(name, artist, genre)
    @name = name
    @genre = genre
    @artist = artist
    #*************#
    @@count += 1
    @@genres << genre #setting behavior of class variables during instantiation
    @@artists.push(artist)
    end

  def self.count
    @@count #simply returns count by pointing to class @@count
  end

  def self.genres #creates an array of unique genres, sourcing from @@genres
    rather_unique = []
    @@genres.each do |genre|
      if !rather_unique.include?(genre)
        rather_unique << genre
     end
    end
    return rather_unique
  end

  def self.artists  #same as self.genres
    nas = []                 #---
    for artist in @@artists  #  |
      if !nas.include?(artist)  #as per ruby docs, .uniq could technically be used to simplify whole thing.
        nas.push(artist)     #--|
      end
    end
    return nas
  end
  #at some point when rewriting I forgot .keys as part of !gc.include and it still worked. ?
  def self.genre_count  #would sort of rather do it by turning rather_unique/nas
    gc = {}             #into objects and accessing them too, but...
    @@genres.each do |genre|
      if !gc.include?(genre)      #if genre doesn't exist yet
        gc[genre] = 1             #populate it and set keyvalue to 1
      else                        #otherwise,
        gc[genre] += 1            #increment keyvalue
      end
    end
    return gc
  end

  def self.artist_count
    ac = {}
    @@artists.each do |artist|
      if !ac.keys.include?(artist)
        ac[artist] = 1
      elsif ac.keys.include?(artist) #just for clarity's sake >_>
        ac[artist] += 1
      end
    end
    return ac
  end
end
