class CreateFoodRecipes < ActiveRecord::Migration[7.1]
  def change
    create_table :food_recipes do |t|
      t.integer :food_id
      t.integer :recipe_id
      t.integer :quantity

      t.timestamps
    end
  end
end
