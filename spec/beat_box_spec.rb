require "./lib/beat_box"
require "./lib/linked_list"
require "./lib/node"
require "pry"

RSpec.describe BeatBox do 
    it 'exist' do 
        bb = BeatBox.new

        expect(bb).to be_instance_of(BeatBox)
        expect(bb.list.head).to eq(nil)
        expect(bb.list).to be_instance_of(LinkedList)
    end

    it 'appends' do
        bb = BeatBox.new
    
        expect(bb.append("deep doo ditt")).to eq("deep doo ditt")
        expect(bb.list.head.data).to eq("deep")
        expect(bb.list.head.next_node.data).to eq("doo")
        expect(bb.append("woo hoo shu")).to eq("woo hoo shu")
        expect(bb.count).to eq(6)
    end

    it 'prepends' do
        bb = BeatBox.new
        bb.append("deep do ditt")

        expect(bb.prepend("kit kat")).to eq("kit kat")
        expect(bb.count).to eq(5)
    end  

    it 'appends more nodes' do
        bb = BeatBox.new 

        expect(bb.append("deep doo ditt woo hoo shu")).to eq("deep doo ditt woo hoo shu")
        expect(bb.count).to eq(6)
        expect(bb.list.count).to eq(6)
    end

    it 'plays' do
        bb = BeatBox.new 
        
        expect(bb.play).to eq(`say -r 250 -v Boing "deep doo ditt woo hoo shu"`)
    end
end