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
  
  def posts
    Post.all
  end 
  
  
  def add_post_by_title(post)
    name = Post.new(post)
    #@songs << song
    name.artist = self
    @@songcount += 1
  end 
  
  def self.song_count
    Song.all.count
  end 
    
  
end 