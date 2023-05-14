# Requiring access to the lib file node and linked_list. 
# Requiring pry in order to have access of all features. 
require "./lib/linked_list"
require "./lib/node"
require "pry"

# Defining and initializing the linked_list class.
# Following the iteration pattern, a list is assigned to as a new instance of the linked_list class.
#  Iteration pattern: Expect list to be an instance of Linkedlist
RSpec.describe LinkedList do
    it 'exist' do
        list = LinkedList.new

        expect(list).to be_instance_of(LinkedList)
    end
# Iteration pattern: test for the head attribute. list is assigned as an instance of linked_list.
# It is expected that the head attribute is equal to nil.
    it 'has a head that is nil by default' do
        list = LinkedList.new

        expect(list.head).to eq(nil)
    end
# Iteration pattern: testing for the append method. list is assigned as an instance of the linked_list.
# It is expected that append method will return and equal "doop". It is expected that the list.head.data attribute will also
# equal doop since that is the only data gathered so far. It is expected that list.head.next_node is equal to nil since there is only one node.
    it 'appends' do
        list = LinkedList.new
        # list.append("doop")
        
        expect(list.append("doop")).to eq("doop")
        expect(list.head.data).to eq("doop")
        expect(list.head.next_node).to eq(nil)
    end
# Iteration pattern: testing for the count method. list is assigned as an instance if linked_list.
# The append method is being called on list and adding a new node through the data argument. list.append("doop").
# It is expected that the count will equal 1. 
    it 'counts' do
        list = LinkedList.new
        list.append("doop")
        
        # expect(list.head.next_node).to eq(nil)
        # expect(list.append("doop")).to eq("doop")
        expect(list.count).to eq(1)
    end
# Iteration pattern: testing the to_string method. list is assigned as an instance of linked_list.
# The append method is being called on list and adding a new node through the data argument. list.append("doop")
# It is expected that to_string should equal "doop".
    it 'changes to a string' do
        list = LinkedList.new
        list.append("doop")

        # expect(list.append("doop")).to eq("doop")
        expect(list.to_string).to eq("doop")
    end
# Iteration pattern: further testing for the append method. list is assigned as an instance of linked_list.
# The append method is being called on list and adding a new node through the data argument. list.append("doop").
# It is then calling the append method again but adding a new node through the data argument. list.append("deep").
# It is expected that list.append("deep") to equal "deep".
# It is expected that the head node should  have the data stored equal to "doop".
# It is expected that the head.next_node data should have the stored value equal to "deep".
# It is expected that the head.next_node.next_node. aka the node after the second node is equal to nil. which means the end of the list.
    it 'appends more nodes' do
        list = LinkedList.new
        list.append("doop")
        # list.append("deep")
        
        expect(list.append("deep")).to eq("deep")
        expect(list.head.data).to eq("doop")
        expect(list.head.next_node.data).to eq("deep")
        expect(list.head.next_node.next_node).to eq(nil)
    end
# Iteration pattern: further testing for the count method. list is assigned as an instance of linked_list. 
# The append method is then being called on list and adding a new node through the data argument. list.append("deep")
# There is now list.append("doop") and ("deep") to be counted for. 
# It is expected that list.count should now equal 2.
    it 'it counts things in my list' do
        list = LinkedList.new
        list.append("doop")
        list.append("deep")

        expect(list.count).to eq(2)
    end
# Iteration pattern: Further testing for the to_string method. list is assigned as an instance of linked_list.
# The append method is then being called on list and adding two new nodes through the data argument. list.append("deep") & ("doop").
# It is expected that the to_string method should now equal "doop deep". Both separated by spaces.
    it 'returns strings as list' do
        list = LinkedList.new
        list.append("doop")
        list.append("deep")

        expect(list.to_string).to eq("doop deep")
    end
# Iteration patter: Test for the prepend method. List becomes an instance of the linkedlist class.
# The append method is then being called on list and adding two new nodes through thr data argument. list.append("plop") & ("suu")
# it is expected that the prepend method will equal dop.
# it is expected the to_string method will then equal "dop plop suu". This method places dop in front of the other two nodes.
    it 'prepends nodes' do
        list = LinkedList.new 
        list.append("plop")
        list.append("suu")

        expect(list.prepend("dop")).to eq("dop")
        expect(list.to_string).to eq("dop plop suu")
    end
end 
