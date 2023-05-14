# Requiring access to the lib file that is labeled node is needed
# Requiring pry is encouraged as it provides a "library" of tools from pry.
require "./lib/node"
require "pry"

# Defining and initializing the Node class. 
# Following the iteration pattern, a new node is assigned as a new instance of the Node class.
# Plop is passed as an argument and its data value.
# Iteration pattern: Expect node to be an instance of the Node class.
RSpec.describe Node do
    it 'exist' do
        node = Node.new("plop")

        expect(node).to be_instance_of(Node)
    end
# Iteration pattern: test for data attribute. New node is assigned and given "plop" as 
# as an argument. It is then expected that the data attribute is equal to "plop"
    it 'has data' do
        node = Node.new("plop")
    
        expect(node.data).to eq("plop")
    end
# Iteration pattern: test for next_node attribute. New node is assigned and given "plop" as
# as an argument. It is then expected that the next_node attribute will be equal to nil
    it 'has a next node' do
    node = Node.new("plop")

    expect(node.next_node).to eq(nil)
    end
end