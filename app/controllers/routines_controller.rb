class RoutinesController < ApplicationController
  def show
    @routine = Routine.find(params[:id])
  end
end
