def bubble_sort(array)
  (array.size - 1).downto(0) do |i|
    0.upto(i - 1) do |j|
      next unless array[j] > array[j + 1]
        array[j], array[j + 1] = array[j + 1], array[j]
    end
  end
  array
end

p bubble_sort([6, 3, 8, 5, 10, 7, 1])