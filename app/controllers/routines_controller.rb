class RoutinesController < ApplicationController
  def show
    @routines = Routine.find(params[:id])
  end
end
