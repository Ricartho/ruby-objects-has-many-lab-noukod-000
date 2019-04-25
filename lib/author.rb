class Author 
  attr_accessor :name 
  @@post = 0
  def initialize(name)
    @name = name
    @posts = []
  end 
  
  def posts
    @posts 
  end
    
  def add_post(new_post)
    @posts << new_post
    new_post.author = self 
    @@post += 1 
  end 
  
  def add_post_by_title(new_title)
    new_post = Post.new(new_title)
    new_post.author = self 
    @posts << new_post
    @@post += 1
    
  end 
  
  def self.post_count
    @@post 
  end 
end 