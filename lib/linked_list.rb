class LinkedList

    attr_reader :head
    def initialize
        @head = nil
    end

    def append(data)
        if @head == nil 
            @head = Node.new(data)
        else
            current_node = @head
            while current_node.next_node != nil
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
        @head.data
    end
end