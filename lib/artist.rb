require 'pry'
class Artist 
  attr_accessor :name
  
  @@all = []
  
    def initialize(name)
    @name = name
    @songs = []
    @@all << self
  
  end 
  
  def self.all 
    @@all
  end
  
  def songs 

  end
  
  def add_song(song)
    song.artist = self
  end
  
end