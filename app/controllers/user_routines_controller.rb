class UserRoutinesController < ApplicationController
  def show
    @user_routine = UserRoutine.find(params[:id])
  end
end

# @recipe = Recipe.find(params[:recipe_id])
#     @favourite = Favourite.new(recipe_id: params[:recipe_id])
#     @favourite.user_id = current_user.id
#     if @favourite.save
#      redirect_to produce_recipes_path(params[:produce_id])
#     else
#      render :create
#     end
#   end
