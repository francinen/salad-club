class IngredientsController < ApplicationController
	before_action :correct_user, only: :destroy
	def create
		@ingredient = current_user.ingredients.build(ingredient_params)
		if @ingredient.save
			flash[:success] = "Profile updated!"
			redirect_to root_url
		else
			render 'static_pages/home'
		end
	end

	def destroy
		@ingredient.destroy
		flash[:success] = "Ingredients deleted"
		redirect_to request.referrer || root_url
	end

	private

		def ingredient_params
			params.require(:ingredient).permit(:first, :second, :considerations)
		end

		def correct_user
			@ingredient = current_user.ingredients.find_by(id: params[:id])
			redirect_to root_url if @ingredient.nil?
		end
end
