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
      new_node.next_node(@head)
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
    @head.r_value
  end

  def tail
    # returns the last node in the list
    @tail.r_value
  end

  def at(index)
    # returns the node at the given index
    i = 0
    search = @head
    until i == index
      search = search.next
      i += 1
    end
    p search.r_value
  end

  def pop
    # removes the last element from the list
    remove = @tail
    search = @head
    until search.next == @tail
      search = search.next
    end
    @tail = search
    @tail.next_node(nil)
    @node_counter -= 1
  end

  def contains?(value)
    # returns true if the passed in value is in the
    # list and otherwise returns false.
    search = @head
    until search.next == nil
      if value == search.r_value
        return true
      else
        search = search.next
      end
    end
  end

  def find(value)
    # returns the index of the node containing value, or nil if not found.
    index = 0
    search = @head
    until search == nil
      if search.r_value == value
        return index
      else
        index += 1
        search = search.next
      end
    end  
  end

  def to_s
    # represent your LinkedList objects as strings, so you can print
    # them out and preview them in the console. The format should be:
    # ( value ) -> ( value ) -> ( value ) -> nil
    search = @head
    str = ""
    until search == nil
      str += "( #{search.r_value} ) -> "
      search = search.next
    end
    str += "nil"
    puts str
  end
end
