class CombineItemsInCart < ActiveRecord::Migration[6.1]
  def up
    Cart.all.each do |cart|
      sums = cart.line_items.group(:game_id).sum(:count)
      sums.each do |game_id, count|
        if count > 1
          cart.line_items.where(game_id: game_id).delete_all
          item = cart.line_items.build(game_id: game_id)
          item.count = count
          item.save!
        end
      end
    end
  end

  def down
    LineItem.where("count>1").each do |line_item|
      line_item.count.times do
        LineItem.create(
          cart_id: line_item.cart_id,
          game_id: line_item.game_id,
          count: 1
        )
    end
    line_item.destroy
    end
  end

end
