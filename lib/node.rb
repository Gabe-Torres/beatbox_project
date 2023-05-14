# Node class was create and initialized. With two instance variables
# The next_node instance variable is set to nil by default. 
# Data is passed as the initial argument of the Node class. And @data will
# retrieve the value within data.
class Node
    attr_accessor :next_node
    attr_reader :data

    def initialize(data)
        @data = data
        @next_node = nil
    end

    # I was doing extra work and hard coding by creating my methods. 
    # Placing the two variables in the getter method, attr_reader, is 
    # is the right way to go. This allows me to access the instance variables
    # outside the class. 

    # def data
    #     @string = "plop"
    # end

    # def next_node 
    #     nil
    # end
end