class Artist
  attr_accessor :name 

  def initialize(a_name)
    @name = a_name
  end

  #Return array of all of this artist's songs
  def songs
    Song.all.select{|song| song.artist == self}
  end

  def add_song(song)
    song.artist = self 
  end 

  def add_song_by_name(song_name) 
    add_song(Song.new(song_name))
  end #add_song_by_name

  def self.song_count
    Song.all.length
  end #self.song_count

end #class