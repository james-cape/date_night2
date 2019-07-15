require 'rails_helper'

RSpec.describe BinarySearchTree do
  describe "tree can be build with nodes" do
    it "initializes with nil score root node" do
      tree = BinarySearchTree.new

      expect(tree.root_node.score).to eq(nil)
    end

    it "initializes with some score root node" do
      tree = BinarySearchTree.new(61, "Bill & Ted's Excellent Adventure")

      expect(tree.root_node.score).to eq(61)
      expect(tree.root_node.title).to eq("Bill & Ted's Excellent Adventure")
    end

    it "assigns left/right" do
      tree = BinarySearchTree.new

      tree.insert(61, "Bill & Ted's Excellent Adventure")

      expect(tree.root_node.score).to eq(61)

      tree.insert(16, "Johnny English")

      expect(tree.root_node.score).to eq(61)
      expect(tree.root_node.left.score).to eq(16)
      expect(tree.root_node.right).to eq(nil)

      tree.insert(92, "Sharknado 3")

      expect(tree.root_node.score).to eq(61)
      expect(tree.root_node.left.score).to eq(16)
      expect(tree.root_node.right.score).to eq(92)
    end
  end

  # describe "tree can be build with nodes" do
  #   describe "#insert" do
  #     it "inserts node and returns depth of each node" do
  #       tree = Tree.new
  #
  #       expect(tree.insert(61, "Bill & Ted's Excellent Adventure")).to eq(0)
  #       expect(tree.insert(16, "Johnny English")).to eq(1)
  #       expect(tree.insert(92, "Sharknado 3")).to eq(1)
  #       expect(tree.insert(50, "Hannibal Buress: Animal Furnace")).to eq(2)
  #     end
  #   end
  # end
end
