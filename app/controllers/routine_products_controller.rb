class RoutineProductsController < ApplicationController
  def create
    @routine = Routine.find(params[:routine])
    @routine_product = RoutineProduct.new
    @routine_product.user = current_user
    @routine_product.product = Product.find(params[:routine_product][:product])
    if @user_answer.save
      redirect_to routine_path(@routine)
    end
  end
end
