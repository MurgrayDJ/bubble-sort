# Author: Murgray D. John
# Date created: 11/11/2022 
# Purpose: Uses bubble sort to sort an array

def bubble_sort(unsorted_array)
    temp = nil
    not_sorted = true

    while not_sorted do
        not_sorted = false
        unsorted_array.each_with_index do |item, idx|
            next_idx = idx + 1
            next_item = unsorted_array[next_idx]
            if next_item.nil?
                break
            end
            
            if next_item < item
                temp = item
                unsorted_array[idx] = next_item
                unsorted_array[next_idx] = temp
                not_sorted = true
            end
        end
    end
    unsorted_array
end

def run_program
    unsorted_array = [4,3,78,2,0,2]
    p bubble_sort(unsorted_array)
end

run_program