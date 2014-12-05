require 'test_helper'

class IngredientTest < ActiveSupport::TestCase
	def setup
		@user = users(:michael)
		@ingredient = @user.ingredients.build(first: "Lettuce", second: "Tuna", considerations: "None")
	end

	test "should be valid" do
		assert @ingredient.valid?
	end

	test "user id should be present" do
		@ingredient.user_id = nil
		assert_not @ingredient.valid?
	end

	test "content should be present" do
		@ingredient.first = "    "
		@ingredient.second = "     "
		@ingredient.considerations = "      "
		assert_not @ingredient.valid?
	end
end
