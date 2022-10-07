# Odin Project Bubble Sort

# Build a method #bubble_sort that takes an array 
# and returns a sorted array. It must use the bubble sort methodology.
# unsorted_array = [4,3,78,2,0,2]


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



puts "Please provide a list of comma-separated values. Ex: 4,3,78,2,0,2 \n"

unsorted_array = gets
unsorted_array = unsorted_array.chomp
unsorted_array = unsorted_array.split(',').map(&:to_i)

final = bubble_sort(unsorted_array)

p final

