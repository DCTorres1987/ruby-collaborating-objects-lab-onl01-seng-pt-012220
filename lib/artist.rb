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
  Song.all.find_all do |song|
    binding.pry 
    song.artist

  end
  
  def add_song(song)
    song.artist = self
  end
  
end