require 'rails_helper'

RSpec.describe "food_recipes/edit", type: :view do
  let(:food_recipe) {
    FoodRecipe.create!(
      food_id: 1,
      recipe_id: 1
    )
  }

  before(:each) do
    assign(:food_recipe, food_recipe)
  end

  it "renders the edit food_recipe form" do
    render

    assert_select "form[action=?][method=?]", food_recipe_path(food_recipe), "post" do

      assert_select "input[name=?]", "food_recipe[food_id]"

      assert_select "input[name=?]", "food_recipe[recipe_id]"
    end
  end
end
