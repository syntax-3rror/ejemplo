def make_change2(amount, coins = [25, 10, 5, 1])
  solutions = []
  (0...coins.size).each { |offset|
    change = []
    value = amount
    coins[offset...coins.size].each { |coin|
      until value < coin
        value -= coin
        change << coin
      end
    }
    solutions << change
  }
  solutions.min_by {|solution| solution.length }
end

puts make_change2(47,[25, 20, 1, 1] )