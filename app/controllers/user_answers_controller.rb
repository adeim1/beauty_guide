class UserAnswersController < ApplicationController
  def create
    @question = Question.find(params[:question])
    @user_answer = UserAnswer.new
    @user_answer.user = current_user
    @user_answer.answer = Answer.find(params[:user_answer][:answer])
    if @user_answer.save
      redirect_to question_path(@question.id + 1)
    end
  end
end

if user_answer = Answer.last

end
# if the user answers the last question of the quiz
# redirect them to their routine
