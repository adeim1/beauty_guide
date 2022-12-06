class AnswersController < ApplicationController
  # def initialize(user_answer, category_linked_to_answer)
  #   @user_answer = user_answer
  #   @category_linked_to_answer = category_linked_to_answer
  # end
  # def ChooseRightCategoryForUserBasedOnAnswers()
  # end

  def show
    @answer = Answer.find(params[:id])
  end

  # def value
  #   answer.question.value = 0
  #   answer.user_answers += points
  # end

  # def ChooseRightCategoryForUserBasedOnAnswers
  #   @user_answer = user_answer
  #   @category_linked_to_answer = category_linked_to_answer

  #   user_answer.answer
  # end
end
