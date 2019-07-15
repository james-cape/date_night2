class BinarySearchTree

  attr_accessor :root_node
  def initialize(score = nil, title = nil)
    @root_node = Node.new(score, title)
  end


  # def insert(score, title)
  #   new_node = Node.new(score, title)
  #
  #
  #   if @root_node.root_node.nil?
  #     @root_node.root_node = Node.new(score, title)
  #   else
  #     @root_node.root_node.insert(score, title)
  #   end
  # end

  def insert(score, title)
    if @root_node.score.nil?
      @root_node = Node.new(score, title)
    else

      if score <= @root_node.score
        @root_node.left.nil? ? @root_node.left = Node.new(score, title) : @root_node.left.insert(score, title)
      elsif score > @root_node.score
        @root_node.right.nil? ? @root_node.right = Node.new(score, title) : @root_node.right.insert(score, title)
      end

    end
  end

end
