# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# puts 'Creating products...'
# inistree_dry_norm = Product.new(name: "Isntree Hyaluronic Acid Watery Sun Gel SPF50+", price: 19, type: "spf")
# inistree.save!

# sun_bum_sensitive = Product.new(name: "Sun Bum Mineral Face Sunscreen Lotion SPF 30", price: 20, type: "spf")
# sun_bum.save!

# beauty_of_joseon = Product.new(name: "Beauty of Joseon Relief Sun: Rice + Probiotic + PA++++ SPF 50", price: 15, type: "spf")
# beauty_of_joseon.save!

# la_roche = Product.new(name: "La Roche Posay Anthelios Mineral Tinted Ultra-Fluid Face Sunscreen Lotion For Sensitive Skin SPF 50", price: , type: "spf")
# product.save!

# rl_birch_spf_dry = Product.new(name: "Round Lab Birch Juice Moisturizing Sunscreen SPF50+ PA++++", price: , type: "spf")
# rl_birch_spf_dry.save!

# rl_dokdo_spf_normal_oily = Product.new(name: "Round Lab Dokdo 1025 Sunscreen SPF50+ PA++++", price: , type: "spf")
# rl_dokdo_spf_normal_oily.save!

# product = Product.new(name: "")
# chez_gladines.save!
# puts 'Finished!'
# oily, combination, and dry

# oily skin = 1p
# combination skin = 2p
# dry skin = 3p
# sensitive = 3p
user_1 = User.create!(first_name: "Jess", last_name: "Silva", email: "test@test.com", password: "123456")

quiz = Quiz.new
puts "Quiz created"

user_question = Question.new(description: "How old are you?",
                            has_points: false,
                            points: 0,
                            quiz: quiz
)
user_question.save!
puts "Question created"

answer_1 = Answer.create!(text: "18-29", question: user_question)
puts "Answer created"

# UserAnswer.create!(user: user_1, answer: answer_1) #What should happen only when the user selects this answer.

# question_one = Question.new(question: "what are your main skin concerns?",
#                             answer_one: "Signs of aging?",
#                             answer_two: "Acne and clogged pores",
#                             answer_three: "Uneven skin tone, pigmentation",
#                             answer_four: "Oilliness",
#                             answer_five: "Senistivity and dryness")
# question_one.save!

# question_two = Question.new(question: "Is your skin sensitve",
#                             answer_one: "Yes",
#                             answer_two: "Yes, it can be")
# question_two.save!

# question_three = Question.new(question: "Would you say your skin is darker or lighter than this color",
#                               answer_one: "No",
#                               answer_two: "This color or lighter")
# question_three.save!

# question_four = Question.new(question: "What skincare textures do you prefer?",
#                              answer_one: "Light gels, lotion, fluids",
#                              answer_two: "Rich creams, balms",
#                              answer_three: "Any texture - as long as the product works")
# question_four.save!

# question_five = Question.new(question: "How often are you using skincare products today?",
#                              answer_one: "never",
#                              answer_two: "once and twice a week",
#                              answer_three: "everyday")
# question_five.save!
