class LinkedList

    attr_reader :head
    def initialize
        @head = nil
    end

    def append(data)
        if @head.nil? 
            @head = Node.new(data)
        else
            current_node = @head
            until current_node.next_node == nil
                current_node = current_node.next_node
        end
        current_node.next_node = Node.new(data)
    end
    data
    end

    def count 
        current_node = @head
        count = 0
        until current_node == nil
            count += 1
            current_node = current_node.next_node
        end
        count
    end

    def to_string
        # @head.data
        current_node = @head
        beat_box_beats = ''
        until current_node == nil
            beat_box_beats << current_node.data + " "
            current_node = current_node.next_node
        end
        beat_box_beats.rstrip
    end
end