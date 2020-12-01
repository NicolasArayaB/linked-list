require_relative "node"

class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
    @node_counter = 0
  end

  def append(data)
    # adds a new node containing value to the end of the list.
    new_node = Node.new
    new_node.value(data)

    if @node_counter == 0
      @head = new_node
      @tail = new_node
    else
      @tail.next_node(new_node)
      @tail = new_node
    end
    @node_counter += 1
  end

  def prepend(data)
    # adds a new node containing value to the start of the list.    
    new_node = Node.new
    new_node.value(data)

    if @node_counter == 0
      @head = new_node
      @tail = new_node
    else
      @head.next_node(new_node)
      @head = new_node
    end
    @node_counter += 1
  end

  def size
    # returns the total number of nodes in the list
    puts @node_counter
  end

  def head
    # returns the first node in the list
    @head.p_value
  end

  def tail
    # returns the last node in the list
    @tail.p_value
  end

  def at(index)
    # returns the node at the given index
    
  end

  def pop
    # removes the last element from the list
  end

  def contains?(value)
    # returns true if the passed in value is in the
    # list and otherwise returns false.
  end

  def find(value)
    # returns the index of the node containing value, or nil if not found.
  end

  def to_s
    # represent your LinkedList objects as strings,
    # so you can print them out and preview them in the console.
    # The format should be: ( value ) -> ( value ) -> ( value ) -> nil
  end
end
