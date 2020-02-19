class Song 
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.new_by_filename(file)
    name = file.split(" - ")
    new_song = Song.new(name[1])
  end 
  
  def artist_name=(name)
    new_artist = Artist.find_or_create_by_name
    
  end
  
  def self.all 
    @@all 
  end 
  
end 