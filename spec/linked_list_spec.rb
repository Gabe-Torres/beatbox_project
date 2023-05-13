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
        
        expect(list.append("doop")).to eq("doop")
        expect(list.head.next_node).to eq(nil)
    end

    it 'counts' do
        list = LinkedList.new

        expect(list.count).to eq(1)
    end
end 
