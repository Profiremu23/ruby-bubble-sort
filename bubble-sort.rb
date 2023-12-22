def bubble_sort(array)
  is_sorted = false
  until is_sorted == true do
    array.each_with_index do |current_value, index|
      #Getting the second value (for forward iteration)
      next_value = array[index + 1]
      if next_value.nil?
        next_value = array[index]
      end
      #Sorting mechanism (forward)
      if current_value > next_value #&& is_sorted == false
        array.delete(current_value)
        array.delete(next_value)
        array.insert(index, next_value, current_value)
      else
        is_sorted = true
      end
      p array #Print the result after the first iteration

      #Getting the values for backward iteration (to create a two bound)
      inverted_index = index - (index * 2) - 1
      current_backward_value = array[inverted_index]
      next_backward_value = array[inverted_index - 1]
      if next_backward_value.nil?
        next_backward_value = array[inverted_index]
      end
      #Sorting mechanism (backward)
      if current_backward_value < next_backward_value #&& is_sorted == false
        array.delete(current_backward_value)
        array.delete(next_backward_value)
        array.insert(inverted_index, current_backward_value, next_backward_value)
      else
        is_sorted = true
      end
      p array #Print the result after the second iteration
    end
  end
end

bubble_sort([6, 3, 8, 5, 10, 7, 1])