class BinarySearchTree

  attr_accessor :root_node
  def initialize(score = nil, title = nil)
    @root_node = Node.new(score, title)
  end

  def insert(score, title)
    depth = 0

    if @root_node.score.nil?
      @root_node = Node.new(score, title)
    else
      top_node = @root_node

      # if top_node.left.nil? && top_node.right.nil?

        if score <= top_node.score
          depth += 1

          if top_node.left.nil?
            top_node.left = Node.new(score, title)
          else
            require 'pry'; binding.pry
            top_node.left.insert(score, title)
          end

        elsif score > top_node.score
          depth += 1

          if top_node.right.nil?
            top_node.right = Node.new(score, title)
          else
            top_node.right.insert(score, title)
          end

        end
      # end

    end
    depth
  end

  # def depth_of(proposed_score)
  #   return 0 if @root_node.nil?
  #
  #   left_height = depth_of()
  #
  # end

end
