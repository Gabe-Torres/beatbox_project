require "./lib/linked_list"
require "./lib/node"
require "pry"

RSpec.describe LinkedList do
    it 'exist' do
        list = LinkedList.new

        expect(list).to be_instance_of(LinkedList)
    end

    it 'has a head that is nil by default' do
        list = LinkedList.new

        expect(list.head).to eq(nil)
    end

    it 'appends' do
        list = LinkedList.new
        # list.append("doop")
        
        expect(list.append("doop")).to eq("doop")
        expect(list.head.data).to eq("doop")
        expect(list.head.next_node).to eq(nil)
    end

    it 'counts' do
        list = LinkedList.new
        list.append("doop")
        
        # expect(list.head.next_node).to eq(nil)
        # expect(list.append("doop")).to eq("doop")
        expect(list.count).to eq(1)
    end

    it 'changes to a string' do
        list = LinkedList.new
        list.append("doop")

        # expect(list.append("doop")).to eq("doop")
        expect(list.to_string).to eq("doop")
    end

    it 'appends more nodes' do
        list = LinkedList.new
        list.append("doop")
        # list.append("deep")
        
        expect(list.append("deep")).to eq("deep")
        expect(list.head.data).to eq("doop")
        expect(list.head.next_node.data).to eq("deep")
        expect(list.head.next_node.next_node).to eq(nil)
    end

    it 'it counts things in my list' do
        list = LinkedList.new
        list.append("doop")
        list.append("deep")

        expect(list.count).to eq(2)
    end

    it 'returns strings for list' do
        list = LinkedList.new
        list.append("doop")
        list.append("deep")

        expect(list.to_string).to eq("doop deep")
    end

end 