require "spec_helper"

describe "Song" do

  let!(:it_aint_hard_to_tell) { Song.new("It Ain't Hard To Tell", "Nas", "rap" ) } #Because Jay-Z blows.
  let!(:never_change) { Song.new("Never Change", "AZ", "rap") }                    #Also because Jay-Z blows.
  let!(:hit_me) { Song.new("hit me baby one more time", "Britney Spears", "pop") } #also, it's spelled "Britney".

  after(:each) do
    Song.class_variable_set(:@@artists, [])
    Song.class_variable_set(:@@genres, [])
    Song.class_variable_set(:@@count, 0)
    Song.class_variable_set(:@@artist_count, {})
    Song.class_variable_set(:@@genre_count, {})

  end
  describe "#new" do
    it "takes in three arguments: a name, artist and genre" do
      expect{Song.new("hit me baby one more time", "Britney Spears", "pop")}.to_not raise_error
    end
  end

  describe "#name" do
    it "has a name" do
      expect(hit_me.name).to eq("hit me baby one more time")
    end
  end

  describe "#artist" do
    it "has an artist" do
      expect(hit_me.artist).to eq("Britney Spears")
    end
  end

  describe "#genre" do
    it "has a genre" do
      expect(hit_me.genre).to eq("pop")
    end
  end

  describe "class variables" do
    it "has a class variable, @@count" do
      expect(Song.class_variable_get(:@@count)).to eq(3)
    end

    it "has a class variable, @@artists, that contains all of the artists of existing songs" do
      expect(Song.class_variable_get(:@@artists)).to match(["Nas", "AZ", "Britney Spears"])
    end

    it "has a class variable, @@genres, that contains all of the genres of existing songs" do
      expect(Song.class_variable_get(:@@genres)).to match(["rap", "rap", "pop"])
    end
  end

  describe ".count" do
    it "is a class method that returns that number of songs created" do
      expect(Song.count).to eq(3)
    end
  end

  describe ".artists" do
    it "is a class method that returns a unique array of artists of existing songs" do
      expect(Song.artists).to match(["Nas", "AZ", "Britney Spears"])
    end
  end

  describe ".genres" do
    it "is a class method that returns a unique array of genres of existing songs" do
      expect(Song.genres).to match(["rap", "pop"])
    end
  end

  describe ".genre_count" do
    it "is a class method that returns a hash of genres and the number of songs that have those genres" do
      expect(Song.genre_count).to eq({"pop" => 1, "rap" => 2})
    end
  end

  describe ".artist_count" do
    it "is a class method that returns a hash of artists and the number of songs that have those artists" do
      expect(Song.artist_count).to eq({"Britney Spears" => 1, "Nas" => 1, "AZ" => 1})
    end
  end
end
