class UserRoutinesController < ApplicationController
  def show
    @user_routine = UserRoutine.find(params[:id])
  end
end
