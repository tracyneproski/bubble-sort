# Odin Project Bubble Sort

# Build a method #bubble_sort that takes an array 
# and returns a sorted array. It must use the bubble sort methodology.
# unsorted_array = [15,2,4,12,8]

#index = 0
#pair = [unsorted_array[index], unsorted_array[index + 1]]
#unsorted_array.each_with_index do |number, index|

def bubble_sort(unsorted_array)
  index = 0
  pair = [unsorted_array[index], unsorted_array[index + 1]]

  unsorted_array.each_with_index do |number, index|
    while index != unsorted_array.count - 1 do
      if unsorted_array[index] > unsorted_array[index+1]
        pair = [unsorted_array[index + 1], unsorted_array[index]]
        unsorted_array[index] = pair[0]
        unsorted_array[index + 1] = pair[1]
      else
        index += 1
      end
    end
  end
end


# Check first and second number, if first is greater than second, switch.
# Check second and third number, if second is greater than third, switch.
# etc
# When the end of the array has been reached, either end or start over depending
# on whether the array is sorted properly or not.
'''
index = 0
pair = [unsorted_array[index], unsorted_array[index + 1]]

unsorted_array.each_with_index do |number, index|
  until index = unsorted_array.count do
    if unsorted_array[index] > unsorted_array[index+1]
      pair = [unsorted_array[index + 1], unsorted_array[index]]
      unsorted_array[index] = pair[0]
      unsorted_array[index + 1] = pair[1]
    else
      index += 1
    end
  end
  #return unsorted_array
end
'''
