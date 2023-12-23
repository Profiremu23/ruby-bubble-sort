def bubble_sort(array)
  0.upto(array.size - 2) do |index|
    if array[index] > array[index + 1]
      array[index], array[index + 1] = array[index + 1], array[index]
    end
  end
  p array
end

bubble_sort([6, 3, 8, 5, 10, 7, 1])