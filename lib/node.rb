class Node
    attr_reader :data, 
                :next_node

    def initialize(data)
        @data = data
        @next_node = nil
    end

    # def data
    #     @string = "plop"
    # end

    # def next_node 
    #     nil
    # end
end