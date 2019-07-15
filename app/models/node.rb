class Node
  attr_reader :score
  attr_reader :title
  attr_accessor :left
  attr_accessor :right

  def initialize(score = nil, title = nil)
    @score = score
    @title = title
    @left = nil
    @right = nil
  end



end
