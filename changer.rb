class Changer
  COINS = [25, 10, 5, 1].freeze

  def change(amount)
    return_amount = []
    COINS.each do |coin|
      return_amount << [coin] * (amount / coin) if amount >= coin
      amount -= (coin * (amount / coin))
    end

    return_amount.flatten
  end
end
