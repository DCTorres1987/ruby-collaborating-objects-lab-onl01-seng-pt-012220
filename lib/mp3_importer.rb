class MP3Importer 
  attr_accessor :path
  
  @@all = []
  
  def initialize(path)
    @name = path 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def files 
end
  
end 