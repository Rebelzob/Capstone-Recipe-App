require 'rails_helper'

RSpec.describe "food_recipes/new", type: :view do
  before(:each) do
    assign(:food_recipe, FoodRecipe.new(
      food_id: 1,
      recipe_id: 1
    ))
  end

  it "renders new food_recipe form" do
    render

    assert_select "form[action=?][method=?]", food_recipes_path, "post" do

      assert_select "input[name=?]", "food_recipe[food_id]"

      assert_select "input[name=?]", "food_recipe[recipe_id]"
    end
  end
end
