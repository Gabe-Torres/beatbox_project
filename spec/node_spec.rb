require "../lib/node"
require "pry"

RSpec.describe Node do
    it 'exist' do
        node = Node.new("plop")

        expect(node).to be_instance_of(Node)
    end
    
    # it 'has data' do
    #     node = Node.new("plop")
        
    #     expect(data).to eq("plop")
    # end

    # it 'has a next node'
    # node = Node.new("plop")

    # expect(next_node).to eq(nil)
end