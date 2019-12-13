class Author

  attr_accessor :name 

  def initialize(a_name)
    @name = a_name
  end #a_name

  def posts
    Post.all.select{|post| post.author == self}
  end #posts

  def add_post(a_post)
    a_post.author = self 
  end #add_post

  def add_post_by_title(post_title)
    add_post(Post.new(post_title))
  end #add_post_by_title

  def self.post_count
    Post.all.length 
  end #self.post_count

end #class