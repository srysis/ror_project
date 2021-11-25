json.extract! game, :id, :image, :title, :description, :genre, :price, :created_at, :updated_at
json.url game_url(game, format: :json)
