class UserAnswersController < ApplicationController
  # I am joining the array to optimize for performance, aka compare strings rather than loop whilst comparing arrays
  # I'm joining instead of directly storing a string as a value for a reason, go with this please. Dareos

  ROUTINES = {
    # None
    "Routine for oily any skin" => ["Oily", "Any", "No"].join,
    "Routine for oily any sensitive skin" => ["Oily", "Any", "Yes, it can be"].join,
    "Routine for combi any skin" => ["Combination", "Any", "No"].join,
    "Routine for combi any sensitive skin" => ["Combination", "Any", "Yes, it can be"].join,
    "Routine for dry any skin" => ["Dry", "Any", "No"].join,
    "Routine for dry any sensitive skin" => ["Dry", "Any", "Yes, it can be"].join,
    # oilliness
    "Routine for oily skin" => ["Oily", "Oilliness", "No"].join,
    "Routine for oily sensitive skin" => ["Oily", "Oilliness", "Yes, it can be"].join,
    "Routine for combi skin" => ["Combination", "Oilliness", "No"].join,
    "Routine for combi sensitive skin" => ["Combination", "Oilliness", "Yes, it can be"].join,
    "Routine for dry skin" => ["Dry", "Oilliness", "No"].join,
    "Routine for dry sensitive skin" => ["Dry", "Oilliness", "Yes, it can be"].join,
    # Acne
    "Routine for oily acne skin" => ["Oily",  "Acne and clogged pores", "No"].join,
    "Routine for oily acne sensitive skin" => ["Oily",  "Acne and clogged pores", "Yes, it can be"].join,
    "Routine for combi acne skin" => ["Combination",  "Acne and clogged pores", "No"].join,
    "Routine for combi acne sensitive skin" => ["Oily", "Acne and clogged pores", "Yes, it can be"].join,
    "Routine for dry acne skin" => ["Dry",  "Acne and clogged pores", "No"].join,
    # pigmentation
    "Routine for dry acne sensitve skin" => ["Dry",  "Acne and clogged pores", "Yes, it can be"].join,
    "Routine for oily pigmentation skin" => ["Oily", "Uneven skin tone, pigmentation", "No"].join,
    "Routine for oily pigmentation sensitive skin" => ["Oily", "Uneven skin tone, pigmentation", "Yes, it can be"].join,
    "Routine for combi pigmentation skin" => ["Combination", "Uneven skin tone, pigmentation", "No"].join,
    "Routine for combi pigmentation sensitive skin" => ["Combination", "Uneven skin tone, pigmentation", "Yes, it can be"].join,
    "Routine for dry pigmentation skin" => ["Dry", "Uneven skin tone, pigmentation", "No"].join,
    "Routine for dry pigmentation sensitive skin" => ["Dry", "Uneven skin tone, pigmentation", "Yes, it can be"].join,
    # Aging
    "Routine for oily aging skin" => ["Oily", "Signs of aging", "No"].join,
    "Routine for oily aging sensitive skin" => ["Oily", "Signs of aging", "Yes, it can be"].join,
    "Routine for combi aging skin" => ["Combination", "Signs of aging", "No"].join,
    "Routine for combi aging sensitive skin" => ["Combination", "Signs of aging", "Yes, it can be"].join,
    "Routine for dry aging skin" => ["Dry", "Signs of aging", "No"].join,
    "Routine for dry aging sensitive skin" => ["Dry", "Signs of aging", "Yes, it can be"].join
  }


  # none
  def create
    @question = Question.find(params[:question])
    @user_answer = UserAnswer.new
    @user_answer.user = current_user
    @user_answer.answer = Answer.find(params[:user_answer][:answer])
    # binding.pry
    if @user_answer.save
      unless @question == Question.last
        redirect_to question_path(@question.id + 1)
      else
        @user_routine = create_user_routine
        if @user_routine.save!
          redirect_to user_routine_path(@user_routine)
        else
          redirect_to question_path(Question.first)
        end
      end
    end
  end
  # it cannot be saved to an routine, failiure in the making of the quiz

  private

  def create_user_routine
    #  1. store the relevant answers into an array of strings
    answers = [current_user.user_answers[-6].answer.text, current_user.user_answers[-5].answer.text, current_user.user_answers[-4].answer.text].join
    # @value = []
    routine = ROUTINES.select do |key, value|
      # @value << value
      value == answers
    end
    UserRoutine.new(user: current_user, routine: Routine.find_by(name: routine.keys.first))
    # create the correct UserRoutine. NOTE FOR THE NEXT TA: I'm not sure why this UserRoutine is .new and not .create, but it also 17:57
    # Routine.find_by(name: routine[0]) = is undefines method need , Routine.find_by and something that can
  end
end

    # first_user_answer = current_user.user_answers[-6].answer.text
    # second_user_answer = current_user.user_answers[-5].answer.text
    # third_user_answer = current_user.user_answers[-4].answer.text
    # raise
    #  # binding.pry
    # if first_user_answer == "Oily" && second_user_answer == "None" && third_user_answer == "No"
    # binding.pry
    #   UserRoutine.new(user: current_user, routine: Routine.where(name: "Routine for oily skin")[0])
    # elsif first_user_answer == "Oily" && second_user_answer == "None" && third_user_answer == "Yes, it can be"
    # binding.pry
    # UserRoutine.new(user: current_user, routine: Routine.where(name: "Routine for oily sensitive skin")[0])

    # elsif first_user_answer == "Combi" && second_user_answer == "None" && third_user_answer == "No"
    #   UserRoutine.new(user: current_user, routine: Routine.where(name: "Routine for combi skin")[0])

    # here

    # elsif first_user_answer == "Combi" && second_user_answer == "None" && third_user_answer == "Yes, it can be"
    #   UserRoutine.new(user: current_user, routine: Routine.where(name: "Routine for combi sensitive skin")[0])

    # elsif first_user_answer == "Dry" && second_user_answer == "None" && third_user_answer == "No"
    #   UserRoutine.new(user: current_user, routine: Routine.where(name: "Routine for dry skin")[0])

    # elsif first_user_answer == "Dry" && second_user_answer == "None" && third_user_answer == "Yes, it can be"
    #   UserRoutine.new(user: current_user, routine: Routine.where(name: "Routine for dry sensitive skin")[0])

    # oilliness issue
    # elsif first_user_answer == "Oily" && second_user_answer == "Oilliness" && third_user_answer == "No"
    #   UserRoutine.new(user: current_user, routine: Routine.where(name: "Routine for oily skin")[0])
    # elsif first_user_answer == "Oily" && second_user_answer == "Oilliness" && third_user_answer == "Yes, it can be"
    #   UserRoutine.new(user: current_user, routine: Routine.where(name: "Routine for oily sensitive skin")[0])
    # elsif first_user_answer == "Combi" && second_user_answer == "Oilliness" && third_user_answer == "No"
    #   UserRoutine.new(user: current_user, routine: Routine.where(name: "Routine for combi skin")[0])
    # elsif first_user_answer == "Combi" && second_user_answer == "Oilliness" && third_user_answer == "Yes, it can be"
    #   UserRoutine.new(user: current_user, routine: Routine.where(name: "Routine for combi sensitive skin")[0])
    # elsif first_user_answer == "Dry" && second_user_answer == "Oilliness" && third_user_answer == "No"
    #   UserRoutine.new(user: current_user, routine: Routine.where(name: "Routine for dry skin")[0])
    # elsif first_user_answer == "Dry" && second_user_answer == "Oilliness" && third_user_answer == "Yes, it can be"
    #   UserRoutine.new(user: current_user, routine: Routine.where(name: "Routine for dry sensitive skin")[0])

    # Acne issue
    # elsif first_user_answer == "Oily" && second_user_answer == "Acne and clogged pores" && third_user_answer == "No"
    #   UserRoutine.new(user: current_user, routine: Routine.where(name: "Routine for oily acne skin")[0])
    # elsif first_user_answer == "Oily" && second_user_answer == "Acne and clogged pores" && third_user_answer == "Yes, it can be"
    #   UserRoutine.new(user: current_user, routine: Routine.where(name: "Routine for oily acne sensitive skin")[0])
    # elsif first_user_answer == "Combi" && second_user_answer == "Acne and clogged pores" && third_user_answer == "No"
    #   UserRoutine.new(user: current_user, routine: Routine.where(name: "Routine for combi acne skin")[0])
    # elsif first_user_answer == "Combi" && second_user_answer == "Acne and clogged pores" && third_user_answer == "Yes, it can be"
    #   UserRoutine.new(user: current_user, routine: Routine.where(name: "Routine for combi acne sensitive skin")[0])
    # elsif first_user_answer == "Dry" && second_user_answer == "Acne and clogged pores" && third_user_answer == "No"
    #   UserRoutine.new(user: current_user, routine: Routine.where(name: "Routine for dry acne skin")[0])
    # elsif first_user_answer == "Dry" && second_user_answer == "Acne and clogged pores" && third_user_answer == "Yes, it can be"
    #   UserRoutine.new(user: current_user, routine: Routine.where(name: "Routine for dry acne sensitve skin")[0])

    # pigmentation issue
    # elsif first_user_answer == "Oily" && second_user_answer == "Uneven skin tone, pigmentation" && third_user_answer == "No"
    #   UserRoutine.new(user: current_user, routine: Routine.where(name: "Routine for oily pigmentation skin")[0])
    # elsif first_user_answer == "Oily" && second_user_answer == "Uneven skin tone, pigmentation" && third_user_answer == "Yes, it can be"
    #   UserRoutine.new(user: current_user, routine: Routine.where(name: "Routine for oily pigmentation sensitive skin")[0])
    # elsif first_user_answer == "Combi" && second_user_answer == "Uneven skin tone, pigmentation" && third_user_answer == "No"
    #   UserRoutine.new(user: current_user, routine: Routine.where(name: "Routine for combi pigmentation skin")[0])
    # elsif first_user_answer == "Combi" && second_user_answer == "Uneven skin tone, pigmentation" && third_user_answer == "Yes, it can be"
    #   UserRoutine.new(user: current_user, routine: Routine.where(name: "Routine for combi pigmentation sensitive skin")[0])
    # elsif first_user_answer == "Dry" && second_user_answer == "Uneven skin tone, pigmentation" && third_user_answer == "No"
    #   UserRoutine.new(user: current_user, routine: Routine.where(name: "Routine for dry pigmentation skin")[0])
    # elsif first_user_answer == "Dry" && second_user_answer == "Uneven skin tone, pigmentation" && third_user_answer == "Yes, it can be"
    #   UserRoutine.new(user: current_user, routine: Routine.where(name: "Routine for dry pigmentation sensitive skin")[0])

#     # aging issue
#     elsif first_user_answer == "Oily" && second_user_answer == "Signs of aging" && third_user_answer == "No"
#       UserRoutine.new(user: current_user, routine: Routine.where(name: "Routine for oily aging skin")[0])
#     elsif first_user_answer == "Oily" && second_user_answer == "Signs of aging" && third_user_answer == "Yes, it can be"
#       UserRoutine.new(user: current_user, routine: Routine.where(name: "Routine for oily aging sensitive skin")[0])
#     elsif first_user_answer == "Combi" && second_user_answer == "Signs of aging" && third_user_answer == "No"
#       UserRoutine.new(user: current_user, routine: Routine.where(name: "Routine for combi aging skin")[0])
#     elsif first_user_answer == "Combi" && second_user_answer == "Signs of aging" && third_user_answer == "Yes, it can be"
#       UserRoutine.new(user: current_user, routine: Routine.where(name: "Routine for combi aging sensitive skin")[0])
#     elsif first_user_answer == "Dry" && second_user_answer == "Signs of aging" && third_user_answer == "No"
#       UserRoutine.new(user: current_user, routine: Routine.where(name: "Routine for dry aging skin")[0])
#     elsif first_user_answer == "Dry" && second_user_answer == "Signs of aging" && third_user_answer == "Yes, it can be"
#       UserRoutine.new(user: current_user, routine: Routine.where(name: "Routine for dry aging sensitive skin")[0])
#     end

#     # 2. then, compare the answers array to each of the ROUTINES, and return the correct routine for the user
#     routine = ROUTINES.each { |routine| routine[1] == answers }
#     # create the correct UserRoutine. NOTE FOR THE NEXT TA: I'm not sure why this UserRoutine is .new and not .create, but its also 17:57
#     UserRoutine.new(user: current_user, routine: Routine.find_by(name: routine.first[0]))
#   end
# end

# if the user answers the last question of the quiz
# redirect them to their routine
# ROUTINES.each { |routine| puts routine[1] == answers }
