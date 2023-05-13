class LinkedList

    attr_reader :head
    def initialize
        @head = nil
    end

    def append(data)
      if @head == nil 
           @head = Node.new(data)
      end
        data
    #       lastnode = @head
            # while(!lastnode.next_node.nil?)
            #     lastnode = lastnode.next_node
            # end
            #end of the list
            # lastode.next_node = Node.new(value, nil)
    #   end
    end

    def count
        
    end
    
end