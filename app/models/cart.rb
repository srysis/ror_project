class Cart < ApplicationRecord
	has_many :line_items, :dependent => :delete_all
	def add_game(game)
		current_item = line_items.find_by(game_id: game.id)
		if current_item
			current_item.count += 1
		else
			current_item = line_items.build(game_id: game.id)
		end
	current_item
	end
	def total_price
		line_items.to_a.sum { |item| item.total_price }
	end
end
