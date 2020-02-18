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
    @songs
  end
  
  def add_song(add_new)
    @songs << add_new
    @songs
  end
  
  def self.find_or_create_by_name(name)
      self.name.find do |artist|
      if artist.name == name
         name 
      else 
        new_artist = Artist.new(name)
        new_artist
      end
    end
    binding pry
  end 
  
end