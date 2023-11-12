require 'rails_helper'

RSpec.describe "food_recipes/show", type: :view do
  before(:each) do
    assign(:food_recipe, FoodRecipe.create!(
      food_id: 2,
      recipe_id: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
