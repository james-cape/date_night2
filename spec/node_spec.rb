require 'rails_helper'

RSpec.describe Node do
  describe "node can be initialized" do
    it "can be created with nil score and title" do
      node = Node.new

      expect(node.score).to eq(nil)
      expect(node.title).to eq(nil)
    end

    it "can be created some score and title" do
      node = Node.new(61, "Bill & Ted's Excellent Adventure")

      expect(node.score).to eq(61)
      expect(node.title).to eq("Bill & Ted's Excellent Adventure")
    end



    # it "can be created some score and left/right assignment" do
    #   node_0 = Node.new(0)
    #   node_1 = Node.new(1)
    #
    #   expect(node1.score).to eq(0)
    # end
  end
end
