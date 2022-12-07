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
        @user_routine = create_user_routine
        @user_routine.save
        redirect_to user_routine_path(@user_routine)
      end
    end
  end

  private

  def create_user_routine
    first_user_answer = current_user.user_answers.first.answer.text
    second_user_answer = current_user.user_answers[1].answer.text
    third_user_answer = current_user.user_answers[2].answer.text
    if first_user_answer == "Oily" && second_user_answer == "None" && third_user_answer == "No"
      UserRoutine.new(user: current_user, routine: Routine.where(name: "Routine for oily skin")[0])
    elsif first_user_answer == "Oily" && second_user_answer == "None" && third_user_answer == "Yes, it can be"
      UserRoutine.new(user: current_user, routine: Routine.where(name: "Routine for oily sensitive skin"))
    elsif first_user_answer == "Combi" && second_user_answer == "None" && third_user_answer == "No"
      UserRoutine.new(user: current_user, routine: Routine.where(name: "Routine for combi skin"))
    elsif first_user_answer == "Combi" && second_user_answer == "None" && third_user_answer == "Yes, it can be"
      UserRoutine.new(user: current_user, routine: Routine.where(name: "Routine for combi sensitive skin"))
    elsif first_user_answer == "Dry" && second_user_answer == "None" && third_user_answer == "No"
      UserRoutine.new(user: current_user, routine: Routine.where(name: "Routine for dry skin"))
    elsif first_user_answer == "Dry" && second_user_answer == "None" && third_user_answer == "Yes, it can be"
      UserRoutine.new(user: current_user, routine: Routine.where(name: "Routine for dry sensitive skin"))

    # oilliness issue
    elsif first_user_answer == "Oily" && second_user_answer == "Oillness" && third_user_answer == "No"
      UserRoutine.new(user: current_user, routine: Routine.where(name: "Routine for oily skin"))
    elsif first_user_answer == "Oily" && second_user_answer == "Oilliness" && third_user_answer == "Yes, it can be"
      UserRoutine.new(user: current_user, routine: Routine.where(name: "Routine for oily sensitive skin"))
    elsif first_user_answer == "Combi" && second_user_answer == "Oilliness" && third_user_answer == "No"
      UserRoutine.new(user: current_user, routine: Routine.where(name: "Routine for combi skin"))
    elsif first_user_answer == "Combi" && second_user_answer == "Oilliness" && third_user_answer == "Yes, it can be"
      UserRoutine.new(user: current_user, routine: Routine.where(name: "Routine for combi sensitive skin"))
    elsif first_user_answer == "Dry" && second_user_answer == "Oilliness" && third_user_answer == "No"
      UserRoutine.new(user: current_user, routine: Routine.where(name: "Routine for dry skin"))
    elsif first_user_answer == "Dry" && second_user_answer == "Oilliness" && third_user_answer == "Yes, it can be"
      UserRoutine.new(user: current_user, routine: Routine.where(name: "Routine for dry sensitive skin"))

    # Acne issue
    elsif first_user_answer == "Oily" && second_user_answer == "Acne and clogged pores" && third_user_answer == "No"
      UserRoutine.new(user: current_user, routine: Routine.where(name: "Routine for oily acne skin"))
    elsif first_user_answer == "Oily" && second_user_answer == "Acne and clogged pores" && third_user_answer == "Yes, it can be"
      UserRoutine.new(user: current_user, routine: Routine.where(name: "Routine for oily acne sensitive skin"))
    elsif first_user_answer == "Combi" && second_user_answer == "Acne and clogged pores" && third_user_answer == "No"
      UserRoutine.new(user: current_user, routine: Routine.where(name: "Routine for combi acne skin"))
    elsif first_user_answer == "Combi" && second_user_answer == "Acne and clogged pores" && third_user_answer == "Yes, it can be"
      UserRoutine.new(user: current_user, routine: Routine.where(name: "Routine for combi acne sensitive skin"))
    elsif first_user_answer == "Dry" && second_user_answer == "Acne and clogged pores" && third_user_answer == "No"
      UserRoutine.new(user: current_user, routine: Routine.where(name: "Routine for dry acne skin"))
    elsif first_user_answer == "Dry" && second_user_answer == "Acne and clogged pores" && third_user_answer == "Yes, it can be"
      UserRoutine.new(user: current_user, routine: Routine.where(name: "Routine for dry acne sensitve skin"))

    # pigmentation issue
    elsif first_user_answer == "Oily" && second_user_answer == "Uneven skin tone, pigmentation" && third_user_answer == "No"
      UserRoutine.new(user: current_user, routine: Routine.where(name: "Routine for oily pigmentation skin"))
    elsif first_user_answer == "Oily" && second_user_answer == "Uneven skin tone, pigmentation" && third_user_answer == "Yes, it can be"
      UserRoutine.new(user: current_user, routine: Routine.where(name: "Routine for oily pigmentation sensitive skin"))
    elsif first_user_answer == "Combi" && second_user_answer == "Uneven skin tone, pigmentation" && third_user_answer == "No"
      UserRoutine.new(user: current_user, routine: Routine.where(name: "Routine for combi pigmentation skin"))
    elsif first_user_answer == "Combi" && second_user_answer == "Uneven skin tone, pigmentation" && third_user_answer == "Yes, it can be"
      UserRoutine.new(user: current_user, routine: Routine.where(name: "Routine for combi pigmentation sensitive skin"))
    elsif first_user_answer == "Dry" && second_user_answer == "Uneven skin tone, pigmentation" && third_user_answer == "No"
      UserRoutine.new(user: current_user, routine: Routine.where(name: "Routine for dry pigmentation skin"))
    elsif first_user_answer == "Dry" && second_user_answer == "Uneven skin tone, pigmentation" && third_user_answer == "Yes, it can be"
      UserRoutine.new(user: current_user, routine: Routine.where(name: "Routine for dry pigmentation sensitive skin"))

    # aging issue
    elsif first_user_answer == "Oily" && second_user_answer == "Signs of aging" && third_user_answer == "No"
      UserRoutine.new(user: current_user, routine: Routine.where(name: "Routine for oily aging skin"))
    elsif first_user_answer == "Oily" && second_user_answer == "Signs of aging" && third_user_answer == "Yes, it can be"
      UserRoutine.new(user: current_user, routine: Routine.where(name: "Routine for oily aging sensitive skin"))
    elsif first_user_answer == "Combi" && second_user_answer == "Signs of aging" && third_user_answer == "No"
      UserRoutine.new(user: current_user, routine: Routine.where(name: "Routine for combi aging skin"))
    elsif first_user_answer == "Combi" && second_user_answer == "Signs of aging" && third_user_answer == "Yes, it can be"
      UserRoutine.new(user: current_user, routine: Routine.where(name: "Routine for combi aging sensitive skin"))
    elsif first_user_answer == "Dry" && second_user_answer == "Signs of aging" && third_user_answer == "No"
      UserRoutine.new(user: current_user, routine: Routine.where(name: "Routine for dry aging skin"))
    elsif first_user_answer == "Dry" && second_user_answer == "Signs of aging" && third_user_answer == "Yes, it can be"
      UserRoutine.new(user: current_user, routine: Routine.where(name: "Routine for dry aging sensitive skin"))
    end
  end
end

# if the user answers the last question of the quiz
# redirect them to their routine
