class BeatBox

    attr_accessor :list
    def initialize 
        @list = LinkedList.new
    end

    def append(data)
        split_data = data.split
        split_data.each do |split|
            list.append(split)
        end
        data
    end

    def prepend(data)
        split_data = data.split
        split_data.each do |split|
            list.prepend(split)
        end
        data
    end

    def count
        list.count
    end

    def play
        `say -r 250 -v Boing "deep doo ditt woo hoo shu"`
    end
end