class QuizzesController < ApplicationController
  def show
    @quiz = Quiz.find(params[:id])
    # @question_one = @quiz.questions[0]
    # @question_two = @quiz.questions[1]
    # @question_three = @quiz.questions[2]
    # @user_answers = current_user.answers
  end
end
