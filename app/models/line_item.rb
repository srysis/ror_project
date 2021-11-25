class LineItem < ApplicationRecord
  belongs_to :order, optional: true
  belongs_to :game
  belongs_to :cart, optional: true
  def total_price
    game.price * count
  end
end
