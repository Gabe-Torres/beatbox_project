# The Linkedlist class was created and initialized with
# one instance variable, head, which is set to nil by default
# @head will act as the start of the linked list. Once again, placing head in a getter
# method so it can be retrievable outside the class. 
class LinkedList

    attr_reader :head
    def initialize
        @head = nil
    end
# Defining the append method here. And passing data as an argument. The data will be added to
# the linked list. 
# the if statement will run through code and check if the head is nil. If it is nil
# the new node, Node.new, will then become the head. If the @head is not nil
# the current_node is the head. A loop is then activated until the current_node.next_node is equal to nil.
# once at the end of the linked list a next_node is then created and passed data as the argument by assigning to
# Node.new(data).. Finally the method will return the data gathered.
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
# Defining the count method here, the current_node is assigned to the @head
# instance variable aka starting point. The count will begin at zero, so count is assigned to 0.
# A loop is then ran until the current_node, the @head, is equal to nil. meaning it has reached the end
# If there is a node in the linked list it will then increase count by 1 then setting current_node to next_node of the node that was nil.
# The count is then returned.  
    def count 
        current_node = @head
        count = 0
        until current_node == nil
            count += 1
            current_node = current_node.next_node
        end
        count
    end
# Defining the to_string method here. which will take my data and return it as a string. 
# Current_node is assigned to @head or the start of my linked list. An empty string is also assigned to
# beat_box_beats, which is where the data will get shoveled into. 
# A loop is then ran until the current_node is equal to nil aka the end of my
# linked_list. During the looping the data is retrieved and stored with current_node and shoveled into the 
# empty string beat_box_beats. With an added space so the data can be separated. Current_node is then assigned to next_node so the loop can
# retrieve the other data aka nodes. Then beat_box_beats is then returned as a string.
#rstrip removes the spaces that gathered from, + ' '. edited for shorter could and used join method to change the now array to string
    def to_string
        # @head.data
        current_node = @head
        beat_box_beats = []
        until current_node == nil
            beat_box_beats << current_node.data
            current_node = current_node.next_node
        end
        beat_box_beats.join(' ')
    end
#   Defining the prepend method here. And passing data as an argument. The data will be added to
#   the linked list. The if statement runs and checks if the head is nil. If so then the @head = Node.new(data) becomes the new head of the list.
#   else the current_node is assigned as a new node.new(data) then current_node.next_node is assigned to @head. Them @head is assigned as a new node through current_node. 
#   The data is then returned.
    def prepend(data)
        if @head == nil 
            @head = Node.new(data)
        else
            current_node = Node.new(data)
            current_node.next_node = @head
            @head = current_node
        end
        data
    end

    def insert(index,data)
        current_node = @head
        (index - 1).times do
            current_node = current_node.next_node
        end
        new_node = Node.new(data)
        new_node.next_node = current_node.next_node
        current_node.next_node = new_node
        data
    end
#   Defining the find method. it takes two parameters. index and a return_number. 
#   It then returns a string of what was asked in the parameter. An array is made that is 
#   beat_box_beats. it then splits to_string and assigns it to words. 
#   new_index is then assigned as the sum of the index position and the return number, that parameters. 
#   followed by a minus one, which accounts for the last index. the words variable aka the to_string split is then shoveled into beat_box_beats array
#   starting at the index position to the new_index or the index-return_number. The array is then joined back into a string using join.
    def find(index,return_number)
        beat_box_beats = []
        words = to_string.split
        new_index = index + return_number - 1
        beat_box_beats << words[index..new_index]
        beat_box_beats.join(' ')
    end
end