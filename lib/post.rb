require 'pry'

class Post

  attr_accessor :author, :title

  @@all = []

  def initialize(title)
    @author = ''
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    # binding.pry
    if @author != ''
      @author.name
    else
      return nil
    end
  end

end
