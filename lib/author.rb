class Author
  attr_accessor :name, :post
  @@songcount = 0
  def initialize(name)
    @name  = name 
    @s = []
    
  end
  
  def add_post(song)
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