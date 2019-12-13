class Post
  attr_accessor :author, :title 
  @@all = []

  def initialize(a_title)
    @title = a_title
    save
  end #initialize

  def save
    @@all << self
  end #save

  def self.all 
    @@all 
  end #self.posts

  def author_name
    self.author ? self.author.name : nil
  end #author_name

end #class