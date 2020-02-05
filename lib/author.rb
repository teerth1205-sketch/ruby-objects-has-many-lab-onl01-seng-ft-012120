class Author
  attr_accessor :name, :post
  @@songcount = 0
  def initialize(name)
    @name  = name 
    @post = []
    
  end
  
  def add_post(post)
    @post << post
    post.artist = self
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