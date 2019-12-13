class Song
  attr_accessor :artist, :name 
  @@all = []

  def initialize(a_name)
    @name = a_name 
    save
  end #init
  
  def save 
    @@all << self 
  end #save

  def self.all 
    @@all  
  end #self.songs

  def artist_name
    self.artist ? self.artist.name : nil 
  end #artist_name
end #class