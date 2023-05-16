require "./lib/beat_box"
require "./lib/linked_list"
require "./lib/node"
require "pry"

RSpec.describe BeatBox do 
    it 'exist' do 
        bb = BeatBox.new
        list = LinkedList.new 


        expect(list.head).to eq(nil)
        expect(bb).to be_instance_of(BeatBox)
        expect(list).to be_instance_of(LinkedList)
    end

    
end