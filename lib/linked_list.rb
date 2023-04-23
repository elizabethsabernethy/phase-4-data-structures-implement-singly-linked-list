require_relative './node'
require 'pry'

class LinkedList

    attr_accessor :head

    def initialize
        @head = nil
    end

   def prepend(node) #adds a node to the beginning of the list (the head)
        if head.nil?
            self.head = node
            return
        else
            node.next_node = self.head
            return node
        end
   end 

    def append(node) #adds a node to the end of the list 
        if head.nil?
            self.head = node
            return
          end
      
          # Otherwise, traverse the list to find the last node
          last_node = head
          while last_node.next_node
            last_node = last_node.next_node
          end
      
          # and add the node to the end
          last_node.next_node = node
        
    end

     def delete_head #delete the head node
        if head.nil? == false
            self.head = nil
          end
     end

    def delete_tail #removes the node at the end of the list
        if head.nil? == false
            last_node = head
          while last_node.next_node
            last_node = last_node.next_node
          end
          last_node = nil
        end
    end

    def add_after(index, node) #adds a node after the given index of the linked list
        if self.head.data == index
            self.head.next_node = node
        end
    end

    def search(value) #finds a node with the given value within the list

    end
end
