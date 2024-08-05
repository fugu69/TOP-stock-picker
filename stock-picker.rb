prices = [17,3,6,9,15,8,6,1,10]

def stock_picker(prices)
  return [] if prices.length < 2 # Not enough days to buy and sell

  min_price = prices[0]
  min_day = 0
  max_profit = 0
  best_days = [0, 0]

  prices.each_with_index do |price, current_day|
    if current_day > 0
      # Calculate potential profit
      potential_profit = price - min_price

      # Update the best days if a better profit is found
      if potential_profit > max_profit
        max_profit = potential_profit
        best_days = [min_day, current_day]
      end

      # Update minimum price and day if current price is lower
      if price < min_price
        min_price = price
        min_day = current_day
      end
    end
  end

  best_days
end
