json.extract! game, :id, :name, :description, :execution, :type, :route, :available, :creation, :created_at, :updated_at
json.url game_url(game, format: :json)
