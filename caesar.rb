ascii_array = []

def caesar_cipher(input_string, shift_value)
  ascii_array = input_string.codepoints #store the input string as an array of ascii values
  #puts ascii_array
  ascii_array.map! do |value| #run trough every item on array
    if value.between?(65, 90) #conditions for uppercase
      if value + shift_value > 90 #condition from Z to A
        value = value + shift_value - 26 #goes back to the beggining of the alphabet if shift goes past Z
      else
        value = value + shift_value #normal shift
      end
    elsif value.between?(97, 122) #conditions for lowercase
      if value + shift_value > 122 #condition from z to a
        value = value + shift_value - 26 #goes back to the beggining of the alphabet if shift goes past z
      else
        value = value + shift_value #normal shift
      end
    else
      value = value #condition for non-letter
    end
  end
  #puts "\n"
  #puts ascii_array
  #puts "\n"
  #puts ascii_array.pack('c*')
  return ascii_array.pack('c*') #transform the ascii array back to letters and return it
end

caesar_cipher('What a string!', 5)

#Bmfy f xywnsl!