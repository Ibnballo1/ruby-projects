def stock_picker(stock)
  right_pointer = (stock.length - 1)
  best_stock = Array.new(2)
  max = 0

  while right_pointer >= 0
    stock.each_with_index do |stk, index|
      difference = 0
      if (stock[right_pointer] > stk && index < right_pointer)
        difference = stock[right_pointer] - stk
        if difference > max
          max = difference
          best_stock[0], best_stock[1] = index, right_pointer
        end
      end
    end
    right_pointer -= 1
  end
  best_stock
end

p stock_picker([17,3,6,9,15,8,6,1,10]) # => [1, 4]
p stock_picker([1, 5, 14, 6, 9, 2, 4, 9, 12, 19]) # => [0, 9]
