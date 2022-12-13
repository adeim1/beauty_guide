class RoutinesController < ApplicationController
  def show
    @routine = Routine.find(params[:id])
    @routine_product = RoutineProduct.new
  end
end

#  @routine = Routine.find(params[:id, :oily, :combi, :dry, :aging, :acne, :pigmentation, :darker])
# it is possible that we need to a product has_many routines
