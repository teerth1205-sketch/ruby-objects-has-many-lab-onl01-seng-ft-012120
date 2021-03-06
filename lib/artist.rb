class Artist
  attr_accessor :name, :songs
  @@songcount = 0
  def initialize(name)
    @name  = name 
    @songs = []
    
  end
  
  def add_song(song)
    @songs << song
    song.artist = self
    @@songcount += 1
  end 
  
  def songs
    Song.all
  end 
  
  
  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
    @@songcount += 1
  end 
  
  def self.song_count
    Song.all.count
  end 
    
  
end 