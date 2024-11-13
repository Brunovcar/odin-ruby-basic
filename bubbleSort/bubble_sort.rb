def bubble_sort(input_array)
  number_iterations = 0
  while number_iterations < input_array.length - 1 #Number of iterations based on the string length
    array_index = 0 #Variable to run trough the array and acess the specific objects
    while array_index < input_array.length - 1 #Run trough the whole array
      if input_array[array_index] > input_array[array_index + 1] #Swap values if the condition is met
        input_array[array_index], input_array[array_index + 1] = input_array[array_index + 1], input_array[array_index]
        #puts input_array #for debugging
        #puts "\n" #for debugging
      end
      array_index += 1
    end
    number_iterations += 1
  end
  return input_array
end

bubble_sort([4,3,78,2,0,2])