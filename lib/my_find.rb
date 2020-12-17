require 'pry'

def my_find(collection)
    i = 0
    while i < collection.length
      return collection[i] if yield(collection[i])
      i = i + 1
    end
  end 

#   does not call on #find
#   can handle an empty collection
#   yields the correct element to the block
#   returns the elements from the array when the block condition is met
#   returns nil when the block condition is not met