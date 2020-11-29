require_relative "node"

class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def append(node)
    # adds a new node containing value to the end of the list.
    p "This"
    if LinkedList.nil?
      p "Is"
      new_node = Node.new
      new_node.value(node)
      p "Working"
      @head = new_node
      @tail = new_node
      p "tail #{@tail}"
    #else
    #  @tail 
    #  @tail = node
    end
  end

  def prepend(node)
    #adds a new node containing value to the start of the list.
    if LinkedList.nil?
      @head = node
      @tail = node
    else
      node.next_node(@head)
      @head = node
    end
  end
  
  def size
    #returns the total number of nodes in the list
    puts self.size
  end

  def head
    #returns the first node in the list
    puts @head
  end

  def tail
    #returns the last node in the list
    puts @tail
  end

  def at(index)
    #returns the node at the given index
  end

  def pop
    #removes the last element from the list
  end

  def contains?(value)
    #returns true if the passed in value is in the 
    #list and otherwise returns false.
  end

  def find(value)
    #returns the index of the node containing value, or nil if not found.
  end

  def to_s
    #represent your LinkedList objects as strings, 
    #so you can print them out and preview them in the console. 
    #The format should be: ( value ) -> ( value ) -> ( value ) -> nil
  end
end

list = LinkedList.new
list.append("nico")
list.append("fefi")
list.each { |name| p @value }
