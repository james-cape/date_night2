require 'rails_helper'

RSpec.describe Tree do
  describe "tree can be build with nodes" do
    it "initializes with nil value root node" do
      tree = Tree.new

      expect(tree.root_node.value).to eq(nil)
    end

    it "initializes with some value root node" do
      tree = Tree.new(0)

      expect(tree.root_node.value).to eq(0)
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
