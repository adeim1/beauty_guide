class UserRoutinesController < ApplicationController
  def show
    # Question 1
    if current_user.user_answers.first == "Oily"
      UserRoutine.create!(user: current_user, routine: Routine.where(name: "Routine for oily skin"))
    elsif current_user.user_answers.first == "Combi"
      UserRoutine.create!(user: current_user, routine: Routine.where(name: "Routine for combi skin"))
    elsif current_user.user_answers.first == "Dry"
      UserRoutine.create!(user: current_user, routine: Routine.where(name: "Routine for dry skin"))


    # Question 2
    # oily
    elsif current_user.user_answers.first == "Oily" && current_user.user_answers[1] == "None"
      UserRoutine.create!(user: current_user, routine: Routine.where(name: "Routine for oily skin"))
    elsif current_user.user_answers.first == "Oily" && current_user.user_answers[1] == "Oilliness"
      UserRoutine.create!(user: current_user, routine: Routine.where(name: "Routine for oily skin"))
    elsif current_user.user_answers.first == "Oily" && current_user.user_answers[1] == "Acne and clogged pores"
      UserRoutine.create!(user: current_user, routine: Routine.where(name: "Routine for oily acne skin"))
    elsif current_user.user_answers.first == "Oily" && current_user.user_answers[1] == "Uneven skin tone, pigmentation"
      UserRoutine.create!(user: current_user, routine: Routine.where(name: "Routine for oily pigmentation skin"))
    elsif current_user.user_answers.first == "Oily" && current_user.user_answers[1] == "Signs of aging"
      UserRoutine.create!(user: current_user, routine: Routine.where(name: "Routine for oily aging skin"))

    # combi
    elsif current_user.user_answers.first == "Combi" && current_user.user_answers[1] == "None"
      UserRoutine.create!(user: current_user, routine: Routine.where(name: "Routine for combi skin"))
    elsif current_user.user_answers.first == "Combi" && current_user.user_answers[1] == "Oilliness"
      UserRoutine.create!(user: current_user, routine: Routine.where(name: "Routine for oily skin"))
    elsif current_user.user_answers.first == "Combi" && current_user.user_answers[1] == "Acne and clogged pores"
      UserRoutine.create!(user: current_user, routine: Routine.where(name: "Routine for combi acne skin"))
    elsif current_user.user_answers.first == "Combi" && current_user.user_answers[1] == "Uneven skin tone, pigmentation"
      UserRoutine.create!(user: current_user, routine: Routine.where(name: "Routine for combi pigmentation skin"))
    elsif current_user.user_answers.first == "Combi" && current_user.user_answers[1] == "Signs of aging"
      UserRoutine.create!(user: current_user, routine: Routine.where(name: "Routine for combi aging skin"))

    # dry
    elsif current_user.user_answers.first == "Dry" && current_user.user_answers[1] == "None"
      UserRoutine.create!(user: current_user, routine: Routine.where(name: "Routine for dry skin"))
    elsif current_user.user_answers.first == "Dry" && current_user.user_answers[1] == "Oilliness"
      UserRoutine.create!(user: current_user, routine: Routine.where(name: "Routine for oily skin"))
    elsif current_user.user_answers.first == "Dry" && current_user.user_answers[1] == "Acne and clogged pores"
      UserRoutine.create!(user: current_user, routine: Routine.where(name: "Routine for dry acne skin"))
    elsif current_user.user_answers.first == "Dry" && current_user.user_answers[1] == "Uneven skin tone, pigmentation"
      UserRoutine.create!(user: current_user, routine: Routine.where(name: "Routine for dry pigmentation skin"))
    elsif current_user.user_answers.first == "Dry" && current_user.user_answers[1] == "Signs of aging"
      UserRoutine.create!(user: current_user, routine: Routine.where(name: "Routine for dry aging skin"))


    # Question 3
    # none issue
    elsif current_user.user_answers.first == "Oily" && current_user.user_answers[1] == "None" && current_user.user_answer[2] == "No"
      UserRoutine.create!(user: current_user, routine: Routine.where(name: "Routine for oily skin"))
    elsif current_user.user_answers.first == "Oily" && current_user.user_answers[1] == "None" && current_user.user_answer[2] == "Yes, it can be"
      UserRoutine.create!(user: current_user, routine: Routine.where(name: "Routine for oily sensitive skin"))
    elsif current_user.user_answers.first == "Combi" && current_user.user_answers[1] == "None" && current_user.user_answer[2] == "No"
      UserRoutine.create!(user: current_user, routine: Routine.where(name: "Routine for combi skin"))
    elsif current_user.user_answers.first == "Combi" && current_user.user_answers[1] == "None" && current_user.user_answer[2] == "Yes, it can be"
      UserRoutine.create!(user: current_user, routine: Routine.where(name: "Routine for combi sensitive skin"))
    elsif current_user.user_answers.first == "Dry" && current_user.user_answers[1] == "None" && current_user.user_answer[2] == "No"
      UserRoutine.create!(user: current_user, routine: Routine.where(name: "Routine for dry skin"))
    elsif current_user.user_answers.first == "Dry" && current_user.user_answers[1] == "None" && current_user.user_answer[2] == "Yes, it can be"
      UserRoutine.create!(user: current_user, routine: Routine.where(name: "Routine for dry sensitive skin"))

    # oilliness issue
    elsif current_user.user_answers.first == "Oily" && current_user.user_answers[1] == "Oillness" && current_user.user_answer[2] == "No"
      UserRoutine.create!(user: current_user, routine: Routine.where(name: "Routine for oily skin"))
    elsif current_user.user_answers.first == "Oily" && current_user.user_answers[1] == "Oilliness" && current_user.user_answer[2] == "Yes, it can be"
      UserRoutine.create!(user: current_user, routine: Routine.where(name: "Routine for oily sensitive skin"))
    elsif current_user.user_answers.first == "Combi" && current_user.user_answers[1] == "Oilliness" && current_user.user_answer[2] == "No"
      UserRoutine.create!(user: current_user, routine: Routine.where(name: "Routine for combi skin"))
    elsif current_user.user_answers.first == "Combi" && current_user.user_answers[1] == "Oilliness" && current_user.user_answer[2] == "Yes, it can be"
      UserRoutine.create!(user: current_user, routine: Routine.where(name: "Routine for combi sensitive skin"))
    elsif current_user.user_answers.first == "Dry" && current_user.user_answers[1] == "Oilliness" && current_user.user_answer[2] == "No"
      UserRoutine.create!(user: current_user, routine: Routine.where(name: "Routine for dry skin"))
    elsif current_user.user_answers.first == "Dry" && current_user.user_answers[1] == "Oilliness" && current_user.user_answer[2] == "Yes, it can be"
      UserRoutine.create!(user: current_user, routine: Routine.where(name: "Routine for dry sensitive skin"))

    # Acne issue
    elsif current_user.user_answers.first == "Oily" && current_user.user_answers[1] == "Acne and clogged pores" && current_user.user_answer[2] == "No"
      UserRoutine.create!(user: current_user, routine: Routine.where(name: "Routine for oily acne skin"))
    elsif current_user.user_answers.first == "Oily" && current_user.user_answers[1] == "Acne and clogged pores" && current_user.user_answer[2] == "Yes, it can be"
      UserRoutine.create!(user: current_user, routine: Routine.where(name: ""))
    elsif current_user.user_answers.first == "Combi" && current_user.user_answers[1] == "Acne and clogged pores" && current_user.user_answer[2] == "No"
      UserRoutine.create!(user: current_user, routine: Routine.where(name: "Routine for combi acne skin"))
    elsif current_user.user_answers.first == "Combi" && current_user.user_answers[1] == "Acne and clogged pores" && current_user.user_answer[2] == "Yes, it can be"
      UserRoutine.create!(user: current_user, routine: Routine.where(name: ""))
    elsif current_user.user_answers.first == "Dry" && current_user.user_answers[1] == "Acne and clogged pores" && current_user.user_answer[2] == "No"
      UserRoutine.create!(user: current_user, routine: Routine.where(name: "Routine for dry acne skin"))
    elsif current_user.user_answers.first == "Dry" && current_user.user_answers[1] == "Acne and clogged pores" && current_user.user_answer[2] == "Yes, it can be"
      UserRoutine.create!(user: current_user, routine: Routine.where(name: ""))

    # pigmentation issue
    elsif current_user.user_answers.first == "Oily" && current_user.user_answers[1] == "Uneven skin tone, pigmentation" && current_user.user_answer[2] == "No"
      UserRoutine.create!(user: current_user, routine: Routine.where(name: "Routine for oily pigmentation skin"))
    elsif current_user.user_answers.first == "Oily" && current_user.user_answers[1] == "Uneven skin tone, pigmentation" && current_user.user_answer[2] == "Yes, it can be"
      UserRoutine.create!(user: current_user, routine: Routine.where(name: ""))
    elsif current_user.user_answers.first == "Combi" && current_user.user_answers[1] == "Uneven skin tone, pigmentation" && current_user.user_answer[2] == "No"
      UserRoutine.create!(user: current_user, routine: Routine.where(name: "Routine for combi pigmentation skin"))
    elsif current_user.user_answers.first == "Combi" && current_user.user_answers[1] == "Uneven skin tone, pigmentation" && current_user.user_answer[2] == "Yes, it can be"
      UserRoutine.create!(user: current_user, routine: Routine.where(name: ""))
    elsif current_user.user_answers.first == "Dry" && current_user.user_answers[1] == "Uneven skin tone, pigmentation" && current_user.user_answer[2] == "No"
      UserRoutine.create!(user: current_user, routine: Routine.where(name: "Routine for dry pigmentation skin"))
    elsif current_user.user_answers.first == "Dry" && current_user.user_answers[1] == "Uneven skin tone, pigmentation" && current_user.user_answer[2] == "Yes, it can be"
      UserRoutine.create!(user: current_user, routine: Routine.where(name: ""))

    # aging issue
    elsif current_user.user_answers.first == "Oily" && current_user.user_answers[1] == "Signs of aging" && current_user.user_answer[2] == "No"
      UserRoutine.create!(user: current_user, routine: Routine.where(name: "Routine for oily aging skin"))
    elsif current_user.user_answers.first == "Oily" && current_user.user_answers[1] == "Signs of aging" && current_user.user_answer[2] == "Yes, it can be"
      UserRoutine.create!(user: current_user, routine: Routine.where(name: ""))
    elsif current_user.user_answers.first == "Combi" && current_user.user_answers[1] == "Signs of aging" && current_user.user_answer[2] == "No"
      UserRoutine.create!(user: current_user, routine: Routine.where(name: "Routine for combi aging skin"))
    elsif current_user.user_answers.first == "Combi" && current_user.user_answers[1] == "Signs of aging" && current_user.user_answer[2] == "Yes, it can be"
      UserRoutine.create!(user: current_user, routine: Routine.where(name: ""))
    elsif current_user.user_answers.first == "Dry" && current_user.user_answers[1] == "Signs of aging" && current_user.user_answer[2] == "No"
      UserRoutine.create!(user: current_user, routine: Routine.where(name: "Routine for dry aging skin"))
    elsif current_user.user_answers.first == "Dry" && current_user.user_answers[1] == "Signs of aging" && current_user.user_answer[2] == "Yes, it can be"
      UserRoutine.create!(user: current_user, routine: Routine.where(name: ""))
    end
    # Question 4 -::- (copy all of question 3 but add question 4)
    # Question 5 -::-
    # Question 6 does not matter at the moment
    # elsif everywhere or if in "new question"
  end
end

# "" does not have a routine in seeds yet


# <% if question_one.user_answer = answer_one puts @oily %>
#   <% if question_one.user_answer = answer_two puts @combi %>
#   <% if question_one.user_answer = answer_three puts @dry %>
#     <% if question_two.user_answer = answer_one puts @aging %>
#     <% if question_two.user_answer = answer_two puts @acne %>
#     <% if question_two.user_answer = answer_three puts @pigmentation %>
#     <% if question_two.user_answer = answer_four puts @oilliness %>
#     <% if question_two.user_answer = answer_five puts @sensitive %>
#       <% if question_three.user_answer = answer_one puts @sensitive %>
#         <% if question_four.user_answer = answer_one puts @darker %>


# current_user.user_answers[1]
