class Artist 
  attr_accessor :name
  
   @@songs = 0  
   
  def initialize(name)
    @name = name
    @songs = []
   
  end 
  
  def songs
    @songs
  end 
  
  def add_song(song_name)
    @songs << song_name
    song_name.artist = self 
    @@songs += 1 
  end 
  
  def add_song_by_name(song_name)
    song = Song.new(song_name) 
    song.artist = self
   @songs << song 
    @@songs += 1
  end 
  
  def self.song_count
    @@songs 
  end 
end 