class UserAnswersController < ApplicationController
  def create
    @question = Question.find(params[:question])
    @user_answer = UserAnswer.new
    @user_answer.user = current_user
    @user_answer.answer = Answer.find(params[:user_answer][:answer])
    if @user_answer.save
      unless @question == Question.last
      redirect_to question_path(@question.id + 1)
      else
      redirect_to routine_path(@routine.id)
      end
    end
  end
end

# if the user answers the last question of the quiz
# redirect them to their routine
