json.extract! food_recipe, :id, :food_id, :recipe_id, :created_at, :updated_at
json.url food_recipe_url(food_recipe, format: :json)
