class Author

  attr_accessor :posts, :name

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    self.posts << post
    post.author = self
  end

  def add_post_by_title(title)
    add_post(Post.new(title))
  end

  def self.post_count
    Post.all.length
  end

end
