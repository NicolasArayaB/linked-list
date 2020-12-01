require_relative "linked_list"

list = LinkedList.new
for i in 1..rand(10)
  list.append(rand(100))
end
for i in 1..rand(10)
  list.prepend(rand(100))
end

p "head #{list.head}"
p "tail #{list.tail}"
list.at(2)
list.size
list.pop
list.size
list.contains?(rand(5))
list.find(rand(5))
list.to_s
