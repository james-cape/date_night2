require 'rails_helper'

RSpec.describe Node do
  describe "node can be initialized" do
    it "can be created with nil value" do
      node = Node.new

      expect(node.value).to eq(nil)
    end

    it "can be created some value" do
      node = Node.new(0)

      expect(node.value).to eq(0)
    end

    # it "can be created some value and left/right assignment" do
    #   node_0 = Node.new(0)
    #   node_1 = Node.new(1)
    #
    #   expect(node1.value).to eq(0)
    # end
  end
end
