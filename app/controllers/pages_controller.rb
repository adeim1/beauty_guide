class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @question = Question.first
  end

  def basics
  end
end
