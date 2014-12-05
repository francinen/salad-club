class StaticPagesController < ApplicationController
  def home
  	@ingredient = current_user.ingredients.build if logged_in?
  	@ingredients = Ingredient.all
  end

  def help
  end

  def about
  end

  def contact
  end
end
