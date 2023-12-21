def bubble_sort(array)
  second_value = 0
  is_sorted = false
  until is_sorted == true do
    array.each_with_index do |current_value, index|
      second_value = array[index + 1]
      if second_value.nil?
        second_value = array[index]
      end

      if current_value > second_value #&& is_sorted == false
        array.delete(current_value)
        array.delete(second_value)
        array.insert(index, second_value, current_value)
      else
        is_sorted = true
      end
      p array
    end
  end
end

bubble_sort([6, 3, 8, 5, 10, 7, 1])