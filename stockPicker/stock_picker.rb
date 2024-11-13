def stock_picker(input_array)
  array_index = 1 #auxiliary loop variable (with initial value)
  date_array = Array.new
  buy_value = input_array[0] #buy value (with initial value)
  buy_aux = 0 #auxiliary variable for buy value (with initial value)
  buy_date = 0 #buy date variable (with initial value)
  sell_value = input_array[input_array.length - 1] #sell value (with initial value)
  sell_date = 0 #sell date variable (with initial value)
  profit_value = sell_value - buy_value #profit variable (with initial value)

  input_array.each_with_index do |buy, index_1| #loop to go trough each buy value
    buy_aux = buy #stores the buy value for the comparison on the current loop
    input_array[array_index..-1].each_with_index do |sell, index_2| #loop to compare the current buy value with all the possible sell values remaining
      if profit_value < sell - buy_aux
        buy_value = buy_aux
        buy_date = index_1
        sell_value = sell
        sell_date = index_2 + array_index
        profit_value = sell_value - buy_value
      end
    end
    array_index += 1
  end
  date_array << buy_date
  date_array << sell_date
  return date_array
end


days_array = stock_picker([500,638,137,687,123,987,567,2340,138])
puts days_array
#stock_picker([17,3,6,9,15,8,6,1,10])