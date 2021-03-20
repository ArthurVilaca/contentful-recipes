require 'test_helper'

class RecipesControllerTest < ActionDispatch::IntegrationTest
  test "the truth" do
    assert true
  end

  test "recipes list" do
    get recipes_url
    assert_response :success
    assert_select "h3", "Recipes!"
  end

  test "recipes item" do
    get recipe_url id: '4dT8tcb6ukGSIg2YyuGEOm'
    assert_response :success
    assert_select "h3", "White Cheddar Grilled Cheese with Cherry Preserves & Basil"
  end
end
