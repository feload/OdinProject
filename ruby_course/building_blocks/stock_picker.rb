def stock_picker (prices)
  buy = 0
  sell = 0
  last_res = 0
  res = 0

  prices
  .each_with_index do |p, p_idx|
    ((p_idx + 1)..prices.size)
    .to_a
    .each do |r|
      next() if prices[r].nil?
      res = prices[r] - p
      if res > last_res
        last_res = res
        buy = p_idx
        sell = r
      end
    end
  end

  [buy, sell]
end

puts stock_picker([17,3,6,9,15,8,6,1,10]);