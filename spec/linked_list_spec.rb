require "./lib/linked_list"
require "./lib/node"
require "pry"

RSpec.describe Linked_list do
    it 'exist' do
        list = Linked_list.new
        head = nil 

        expect(list).to be_instance_of(Linked_list)
    end

    it 'appends' do
        list = Linked_list.new
        head = nil 

        expect(list.append).to eq("doop")
    end
end 
