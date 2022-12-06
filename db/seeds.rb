# AnswerClass:  @user_answer: string, @category_linked_to_answer
# def ChooseRightCategoryForUserBasedOnAnswers() do

# user_1 = User.create!(first_name: "Jess", last_name: "Silva", email: "test@tester.com", password: "123456")




puts "Cleaning DB"
RoutineProduct.delete_all
Routine.delete_all
Product.delete_all
UserAnswer.delete_all
Answer.delete_all
Question.delete_all
Quiz.delete_all

puts "DB is clear!"

quiz = Quiz.new
puts "Quiz created"

# user_question = Question.new(description: "How old are you?",
#                              has_points: false,
#                              quiz: quiz
#                             )
# user_question.save!
# puts "User question created"

# answer_age = Answer.new(text: "18-29",
#                           # has_points: false,
#                           points: 0,
#                          )
# puts "Answer created"

# answer_age.question = user_question
# answer_age.save!

# UserAnswer.create!(user: user_1, answer: answer_1) #What should happen only when the user selects this answer.
question_one = Question.new(description: "What is your skin type?",
                            quiz: quiz
                          )

question_one.save!
puts "Question 1 created"

answer_one = Answer.new(text: "Oily",
                          # has_points: true,
                          points: 0
                         )
answer_one.question = question_one
answer_one.save!

answer_two = Answer.new(text: "Combination",
                          # has_points: true,
                          points: 0
                         )
answer_two.question = question_one
answer_two.save!
answer_three = Answer.new(text: "Dry",
                          # has_points: true,
                          points: 0
                         )
answer_three.question = question_one
answer_three.save!
puts "Answers created to question 1"

question_two = Question.new(description: "What are your main skin concerns?",
                            # has_points: false,
                            quiz: quiz
                           )
question_two.save!
puts "Question 2 created"

answer_one = Answer.new(text: "Signs of aging?",
                          # has_points: false,
                          points: 0
                         )
answer_one.question = question_two
answer_one.save!
answer_two = Answer.new(text: "Acne and clogged pores",
                          # has_points: false,
                          points: 0
                         )
answer_two.question = question_two
answer_two.save!
answer_three = Answer.new(text: "Uneven skin tone, pigmentation",
                          # has_points: false,
                          points: 0
                         )
answer_three.question = question_two
answer_three.save!
answer_four = Answer.new(text: "Oilliness",
                          # has_points: false,
                          points: 0
                         )
answer_four.question = question_two
answer_four.save!
answer_five = Answer.new(text: "Senistivity and dryness",
                          # has_points: false,
                          points: 0
                        )
answer_five.question = question_two
answer_five.save!
puts "Answers created to question 2"

question_three = Question.new(description: "Is your skin sensitve?",
                              quiz: quiz,
                              has_points: true
                             )
question_three.save!
puts "Question 3 created"

answer_one = Answer.new(text: "No",
                        # has_points: false,
                        points: 0
                        )
answer_one.question = question_three
answer_one.save!
answer_two = Answer.new(text: "Yes, it can be",
                        # has_points: false,
                        points: 0
                         )
answer_two.question = question_three
answer_two.save!
puts "Answers created to question 3"

question_four = Question.new(description: "Would you say your skin is darker or lighter than this color",
                            #  has_points: false,
                             quiz: quiz
                            )
question_four.save!
puts "Question 4 created"

answer_one = Answer.new(text: "No",
                        points: 0
                         )
answer_one.question = question_four
answer_one.save!
answer_two = Answer.new(text: "This color or lighter",
                          points: 0
                        )
answer_two.question = question_four
answer_two.save!
puts "Answer created to question 4"

question_five = Question.new(description: "What skincare textures do you prefer?",
                            #  has_points: false,
                             quiz: quiz
                            )
question_five.save!
puts "Question 5 created"

answer_one = Answer.new(text: "Light gels, lotion, fluids",
                        points: 0
                         )
answer_one.question = question_five
answer_one.save!
answer_two = Answer.new(text: "Rich creams, balms",
                          points: 0
                         )
answer_two.question = question_five
answer_two.save!
answer_three = Answer.new(text: "Any texture - as long as the product works",
                          points: 0
                         )
answer_three.question = question_five
answer_three.save!
puts "Answers created to question 5"


question_six = Question.new(description: "How often are you using skincare products today?",
                            # has_points: false,
                            quiz: quiz
                           )
question_six.save!
puts "Question 6 created"

answer_one = Answer.new(text: "Never",
                          points: 0
                        )
answer_one.question = question_six
answer_one.save!
answer_two = Answer.new(text: "Ence and twice a week",
                          points: 0
                        )
answer_two.question = question_six
answer_two.save!
answer_three = Answer.new(text: "Everyday",
                          points: 0
                        )
answer_three.question = question_six
answer_three.save!
puts "Answers created to question 6"

puts "creating categories"

cleanser = Category.create!(name: "cleanser", description: "Wash your face with cleanser")
toner = Category.create!(name: "toner", description: "Put toner after washing your face")
cream = Category.create!(name: "cream", description: "Put cream on your face after the toner")
spf = Category.create!(name: "spf", description: "Use sunscreen every day")

# Cleansers
# Oily
puts "creating product Cleanser"
yttp_cleanser = Product.new(name: "YTTP Kale + Green Tea SUPERFOOD CLEANSER", price: 36)
yttp_cleanser.category = cleanser
yttp_cleanser.save!

inkey_cleanser = Product.new(name: "The Inkey List Salicylic Acid Cleanser", price: 10.99)
inkey_cleanser.category = cleanser
inkey_cleanser.save!

tula_cleanser = Product.new(name: "Tula 3-in-1 Acne Cleanser, Mask & Spot Treatment", price: 26)
tula_cleanser.category = cleanser
tula_cleanser.save!

cerave_cleanser = Product.new(name: "CeraVe Foaming Cleanser for Normal to Oily Skin", price: 26)
cerave_cleanser.category = cleanser
cerave_cleanser.save!

# Combi

naturium_cleanser = Product.new(name: "Naturium Niacinamide Cleansing Gel", price: 18)
naturium_cleanser.category = cleanser
naturium_cleanser.save!

hyram_cleanser = Product.new(name: "Selfless by Hyram Centella & Green Tea Daily Gel Cleanser", price: 10)
hyram_cleanser.category = cleanser
hyram_cleanser.save!

rl_birch_cleanser = Product.new(name: "ROUND LAB Birch Juice Moisturizing Cleanser", price: 14.30)
rl_birch_cleanser.category = cleanser
rl_birch_cleanser.save!

cerave_cleanser_combi = Product.new(name: "CeraVe Foaming Cleanser for Normal to Oily Skin", price: 26)
cerave_cleanser_combi.category = cleanser
cerave_cleanser_combi.save!

# Dry
krave_cleanser = Product.new(name: "Krave Beauty Matcha Hemp Hydrating Cleanser", price: 16)
krave_cleanser.category = cleanser
krave_cleanser.save!

goodlight_cleanser = Product.new(name: "GoodLight Cosmic Dew Water Cleanser", price: 18)
goodlight_cleanser.category = cleanser
goodlight_cleanser.save!

peach_cleanser = Product.new(name: "Peach & Lily Power Calm Hydrating Gel Cleanser", price: 28)
peach_cleanser.category = cleanser
peach_cleanser.save!

aveeno_cleanser_dry = Product.new(name: "Aveeno Calm and Restore Nourishing Oat Cleanser", price: 10)
aveeno_cleanser_dry.category = cleanser
aveeno_cleanser_dry.save!

rl_birch_cleanser_dry = Product.new(name: "ROUND LAB Birch Juice Moisturizing Cleanser", price: 14.30)
rl_birch_cleanser_dry.category = cleanser
rl_birch_cleanser_dry.save!

# Toner

# Oily
puts "creating product Toners"
rl_dokdo_toner = Product.new(name: "ROUND LAB Dokdo Toner", price: 17)
rl_dokdo_toner.category = toner
rl_dokdo_toner.save!

rl_mugwort_toner = Product.new(name: "ROUND LAB Mugwort Calming Toner", price: 18)
rl_mugwort_toner.category = toner
rl_mugwort_toner.save!

hero_toner_oily = Product.new(name: "Clear Collective Toner from Hero Cosmetics", price: 12)
hero_toner_oily.category = toner
hero_toner_oily.save!

# Combi

rl_dokdo_toner_combi = Product.new(name: "ROUND LAB Dokdo Toner", price: 17)
rl_dokdo_toner_combi.category = toner
rl_dokdo_toner_combi.save!

rl_mugwort_toner_combi = Product.new(name: "ROUND LAB Mugwort Calming Toner", price: 18)
rl_mugwort_toner_combi.category = toner
rl_mugwort_toner_combi.save!

hero_toner_combi = Product.new(name: "Clear Collective Toner from Hero Cosmetics", price: 12)
hero_toner_combi.category = toner
hero_toner_combi.save!

# Dry

rl_birch_toner_dry = Product.new(name: "ROUND LAB Birch Juice Moisturizing Toner", price: 19)
rl_birch_toner_dry.category = toner
rl_birch_toner_dry.save!

rl_dokdo_toner_dry = Product.new(name: "ROUND LAB Dokdo Toner", price: 17)
rl_dokdo_toner_dry.category = toner
rl_dokdo_toner_dry.save!

hero_toner_dry = Product.new(name: "Clear Collective Toner from Hero Cosmetics", price: 12)
hero_toner_dry.category = toner
hero_toner_dry.save!

rl_mugwort_toner_dry = Product.new(name: "ROUND LAB Mugwort Calming Toner", price: 18)
rl_mugwort_toner_dry.category = toner
rl_mugwort_toner_dry.save!

# Cream

# Oily
puts "creating product Creams"
rl_dokdo_cream_oily = Product.new(name: "ROUND LAB 1025 DOKDO Cream", price: 22)
rl_dokdo_cream_oily.category = cream
rl_dokdo_cream_oily.save!

rl_mugwort_cream_oily = Product.new(name: "ROUND LAB Mugwort Calming Cream", price: 28)
rl_mugwort_cream_oily.category = cream
rl_mugwort_cream_oily.save!

rovectin_cream = Product.new(name: "Rovectin Lotus Water Cream", price: 20)
rovectin_cream.category = cream
rovectin_cream.save!

codex_cream = Product.new(name: "Codex Shaant Balancing Oil Control Cream", price: 35)
codex_cream.category = cream
codex_cream.save!

# Combi

byoma_cream = Product.new(name: "Byoma Moisturizing Gel Cream", price: 14)
byoma_cream.category = cream
byoma_cream.save!

rl_dokdo_cream_combi = Product.new(name: "ROUND LAB 1025 DOKDO Cream", price: 22)
rl_dokdo_cream_combi.category = cream
rl_dokdo_cream_combi.save!

rl_mugwort_cream_combi = Product.new(name: "ROUND LAB Mugwort Calming Cream", price: 28)
rl_mugwort_cream_combi.category = cream
rl_mugwort_cream_combi.save!

# Dry

rl_soybean_cream_dry = Product.new(name: "ROUND LAB Soybean Nourishing Cream", price: 25)
rl_soybean_cream_dry.category = cream
rl_soybean_cream_dry.save!

rl_mugwort_cream_dry = Product.new(name: "ROUND LAB Mugwort Calming Cream", price: 26)
rl_mugwort_cream_dry.category = cream
rl_mugwort_cream_dry.save!

rl_birch_cream_dry = Product.new(name: "ROUND LAB Birch Juice Moisturizing Cream", price: 28)
rl_birch_cream_dry.category = cream
rl_birch_cream_dry.save!

cerave_cream_dry = Product.new(name: "CeraVe Healing Ointment", price: 20)
cerave_cream_dry.category = cream
cerave_cream_dry.save!

cerave_cream_pm_dry = Product.new(name: "CeraVe PM Facial Moisturizing Lotion", price: 18.99)
cerave_cream_pm_dry.category = cream
cerave_cream_pm_dry.save!

puts "creating spf products"
inistree_spf = Product.new(name: "Isntree Hyaluronic Acid Watery Sun Gel SPF50+", price: 26)
inistree_spf.category = spf
inistree_spf.save!

sun_bum_spf = Product.new(name: "Sun Bum Mineral Face Sunscreen Lotion SPF 30", price: 18)
sun_bum_spf.category = spf
sun_bum_spf.save!

beauty_of_joseon_spf = Product.new(name: "Beauty of Joseon Relief Sun: Rice + Probiotic + PA++++ SPF 50", price: 14)
beauty_of_joseon_spf.category = spf
beauty_of_joseon_spf.save!

sun_bum_tinted_spf = Product.new(name: "Sun Bum Mineral SPF 30 Tinted Sunscreen Face Lotion", price: 18)
sun_bum_tinted_spf.category = spf
sun_bum_tinted_spf.save!

rl_birch_spf = Product.new(name: "ROUND LAB Birch Juice Moisturizing Sunscreen SPF50+ PA++++", price: 22)
rl_birch_spf.category = spf
rl_birch_spf.save!

rl_dokdo_spf = Product.new(name: "ROUND LAB Dokdo 1025 Sunscreen SPF50+ PA++++", price: 20)
rl_dokdo_spf.category = spf
rl_dokdo_spf.save!

scinic_spf = Product.new(name: "SCINIC - Enjoy Super Mild Sun Essence SPF50+ PA++++ - 50ml", price: 9)
scinic_spf.category = spf
scinic_spf.save!

force_spf = Product.new(name: "Force Shield Superlight Sunscreen Broad Spectrum SPF 30", price: 19)
force_spf.category = spf
force_spf.save!

puts 'Finished products!'


# Routine am

puts "Creating routine for oily skin"

oily = Routine.create!(name: "Routine for oily skin",
                             am_pm: "AM",
                             points_range: 0
                             )

product_one = RoutineProduct.new(routine: oily,
                                product: cerave_cleanser,
                                )
product_one.save!

product_two = RoutineProduct.new(routine: oily,
                                product: hero_toner_combi
                                )
product_two.save!

product_three = RoutineProduct.new(routine: oily,
                                  product: rovectin_cream
                                  )
product_three.save!

product_four = RoutineProduct.new(routine: oily,
                                 product: scinic_spf
                                 )
product_four.save!


puts "Routin for oily skin is done!"

puts "Creating Routine for combi skin"

combi = Routine.create!(name: "Routine for combi skin",
                             am_pm: "AM",
                             points_range: 0
                             )

product_one = RoutineProduct.new(routine: combi,
                                product: rl_birch_cleanser,
                                )
product_one.save!

product_two = RoutineProduct.new(routine: combi,
                                product: hero_toner_oily
                                )
product_two.save!

product_three = RoutineProduct.new(routine: combi,
                                  product: rl_dokdo_cream_combi
                                  )
product_three.save!

product_four = RoutineProduct.new(routine: combi,
                                 product: beauty_of_joseon_spf
                                 )
product_four.save!

puts "Routin for combi skin done!"

puts "Creating Routine for dry skin"

dry = Routine.create!(name: "Routine for dry skin",
                        am_pm: "AM",
                        points_range: 0
                       )

product_one = RoutineProduct.new(routine: dry,
                                product: krave_cleanser,
                                )
product_one.save!

product_two = RoutineProduct.new(routine: dry,
                                product: rl_birch_toner_dry
                                )
product_two.save!

product_three = RoutineProduct.new(routine: dry,
                                  product: rl_birch_cream_dry
                                  )
product_three.save!

product_four = RoutineProduct.new(routine: dry,
                                 product: rl_birch_spf
                                 )
product_four.save!

puts "Routin for dry skin done!"

puts "Creating Routine for oily sensitive skin"

oily_sensitive = Routine.create!(name: "Routine for oily sensitive skin",
                        am_pm: "AM",
                        points_range: 0
                       )

product_one = RoutineProduct.new(routine: oily_sensitive,
                                product: cerave_cleanser,
                                )
product_one.save!

product_two = RoutineProduct.new(routine: oily_sensitive,
                                product: rl_mugwort_toner
                                )
product_two.save!

product_three = RoutineProduct.new(routine: oily_sensitive,
                                  product: rl_mugwort_cream_oily
                                  )
product_three.save!

product_four = RoutineProduct.new(routine: oily_sensitive,
                                 product: scinic_spf
                                 )
product_four.save!

puts "Routin for oily sensitive skin done!"

puts "Creating Routine for combi sensitive skin"

combi_sensitive = Routine.create!(name: "Routine for combi sensitive skin",
                        am_pm: "AM",
                        points_range: 0
                       )

product_one = RoutineProduct.new(routine: combi_sensitive,
                                product: cerave_cleanser,
                                )
product_one.save!

product_two = RoutineProduct.new(routine: combi_sensitive,
                                product: rl_mugwort_toner_combi
                                )
product_two.save!

product_three = RoutineProduct.new(routine: combi_sensitive,
                                  product: rl_mugwort_cream_combi
                                  )
product_three.save!

product_four = RoutineProduct.new(routine: combi_sensitive,
                                 product: beauty_of_joseon_spf
                                 )
product_four.save!

puts "Routine for combi sensitive skin done!"

puts "Creating Routine for dry sensitive skin"

dry_sensitive = Routine.create!(name: "Routine for dry sensitive skin",
                        am_pm: "AM",
                        points_range: 0
                       )

product_one = RoutineProduct.new(routine: dry_sensitive,
                                product: aveeno_cleanser_dry
                                )
product_one.save!

product_two = RoutineProduct.new(routine: dry_sensitive,
                                product: rl_mugwort_toner_dry
                                )
product_two.save!

product_three = RoutineProduct.new(routine: dry_sensitive,
                                  product: rl_birch_cream_dry
                                  )
product_three.save!

product_four = RoutineProduct.new(routine: dry_sensitive,
                                 product: rl_birch_spf
                                 )
product_four.save!

puts "Routin for dry sensitive skin done!"


puts "Creating Routine for oily aging skin"

# oily_aging = Routine.create!(name: "Routine for  oily aging skin",
#                         am_pm: "AM",
#                         points_range: 0
#                        )

# product_one = RoutineProduct.new(routine: dry_sensitive,
#                                 product: aveeno_cleanser_dry
#                                 )
# product_one.save!

# product_two = RoutineProduct.new(routine: dry_sensitive,
#                                 product: rl_mugwort_toner_dry
#                                 )
# product_two.save!

# product_three = RoutineProduct.new(routine: dry_sensitive,
#                                   product: rl_birch_cream_dry
#                                   )
# product_three.save!

# product_four = RoutineProduct.new(routine: dry_sensitive,
#                                  product: rl_birch_spf
#                                  )
# product_four.save!

puts "Routin for dry sensitive skin done!"
# oily_skin = Routine.create!(name: "Routine for oily skin", am_pm: "AM", points_range: 1)
# RoutineProduct.new(routine: oily_skin, product: rl_dokdo_cream_oily)

# oily_skin = Routine.create!(name: "Routine for oily skin", am_pm: "AM", points_range: 1)
# RoutineProduct.new(routine: oily_skin, product: rl_mugwort_cream_oily)

# oily_skin = Routine.create!(name: "Routine for oily skin", am_pm: "AM", points_range: 1)
# RoutineProduct.new(routine: oily_skin, product: rovectin_cream)

# oily_skin = Routine.create!(name: "Routine for oily skin", am_pm: "AM", points_range: 1)
# RoutineProduct.new(routine: oily_skin, product: codex_cream)

# oily toner am

# oily_skin = Routine.create!(name: "Routine for oily skin", am_pm: "AM", points_range: 1)
# RoutineProduct.new(routine: oily_skin, product: rl_dokdo_toner)

# oily_skin = Routine.create!(name: "Routine for oily skin", am_pm: "AM", points_range: 1)
# RoutineProduct.new(routine: oily_skin, product: rl_mugwort_toner)

# oily_skin = Routine.create!(name: "Routine for oily skin", am_pm: "AM", points_range: 1)
# RoutineProduct.new(routine: oily_skin, product: hero_toner_oily)

# # oily cleanser am

# oily_skin = Routine.create!(name: "Routine for oily skin", am_pm: "AM", points_range: 1)
# RoutineProduct.new(routine: oily_skin, product: yttp_cleanser)

# oily_skin = Routine.create!(name: "Routine for oily skin", am_pm: "AM", points_range: 1)
# RoutineProduct.new(routine: oily_skin, product: inkey_cleanser)

# oily_skin = Routine.create!(name: "Routine for oily skin", am_pm: "AM", points_range: 1)
# RoutineProduct.new(routine: oily_skin, product: tula_cleanser)

# # oily SPF am

# oily_skin = Routine.create!(name: "Routine for oily skin", am_pm: "AM", points_range: 1)
# RoutineProduct.new(routine: oily_skin, product: scinic_spf)

# oily_skin = Routine.create!(name: "Routine for oily skin", am_pm: "AM", points_range: 1)
# RoutineProduct.new(routine: oily_skin, product: rl_dokdo_spf)

# oily_skin = Routine.create!(name: "Routine for oily skin", am_pm: "AM", points_range: 1)
# RoutineProduct.new(routine: oily_skin, product: beauty_of_joseon_spf)

# # tinted

# oily_skin_tinted_spf = Routine.create!(name: "Routine for oily skin", am_pm: "AM", points_range: 1)
# RoutineProduct.new(routine: oily_skin_tinted_spf, product: sun_bum_tinted_spf)


# # Combi skin Routine

# # combi cream
# combi_skin = Routine.create!(name: "Routine for oily skin", am_pm: "PM", points_range: 2)
# RoutineProduct.new(routine: combi_skin, product: byoma_cream)

# combi_skin = Routine.create!(name: "Routine for oily skin", am_pm: "PM", points_range: 2)
# RoutineProduct.new(routine: combi_skin, product: rl_dokdo_cream_combi)

# combi_skin = Routine.create!(name: "Routine for oily skin", am_pm: "PM", points_range: 2)
# RoutineProduct.new(routine: combi_skin, product: rl_mugwort_cream_combi)

# # combi toner

# combi_skin = Routine.create!(name: "Routine for oily skin", am_pm: "PM", points_range: 2)
# RoutineProduct.new(routine: combi_skin, product: rl_dokdo_toner_combi)

# combi_skin = Routine.create!(name: "Routine for oily skin", am_pm: "PM", points_range: 2)
# RoutineProduct.new(routine: combi_skin, product: rl_mugwort_toner_combi)

# combi_skin = Routine.create!(name: "Routine for oily skin", am_pm: "PM", points_range: 2)
# RoutineProduct.new(routine: combi_skin, product: hero_toner_combi)

# # combi cleanser

# combi_skin = Routine.create!(name: "Routine for oily skin", am_pm: "PM", points_range: 2)
# RoutineProduct.new(routine: combi_skin, product: naturium_cleanser)

# combi_skin = Routine.create!(name: "Routine for oily skin", am_pm: "PM", points_range: 2)
# RoutineProduct.new(routine: combi_skin, product: hyram_cleanser)

# combi_skin = Routine.create!(name: "Routine for oily skin", am_pm: "PM", points_range: 2)
# RoutineProduct.new(routine: combi_skin, product: rl_birch_cleanser)

# # Combi skin Routine AM

# # combi cream
# combi_skin = Routine.create!(name: "Routine for oily skin", am_pm: "AM", points_range: 2)
# RoutineProduct.new(routine: combi_skin, product: byoma_cream)

# combi_skin = Routine.create!(name: "Routine for oily skin", am_pm: "AM", points_range: 2)
# RoutineProduct.new(routine: combi_skin, product: rl_dokdo_cream_combi)

# combi_skin = Routine.create!(name: "Routine for oily skin", am_pm: "AM", points_range: 2)
# RoutineProduct.new(routine: combi_skin, product: rl_mugwort_cream_combi)

# # combi toner

# combi_skin = Routine.create!(name: "Routine for oily skin", am_pm: "AM", points_range: 2)
# RoutineProduct.new(routine: combi_skin, product: rl_dokdo_toner_combi)

# combi_skin = Routine.create!(name: "Routine for oily skin", am_pm: "AM", points_range: 2)
# RoutineProduct.new(routine: combi_skin, product: rl_mugwort_toner_combi)

# combi_skin = Routine.create!(name: "Routine for oily skin", am_pm: "AM", points_range: 2)
# RoutineProduct.new(routine: combi_skin, product: hero_toner_combi)

# # combi cleanser

# combi_skin = Routine.create!(name: "Routine for oily skin", am_pm: "AM", points_range: 2)
# RoutineProduct.new(routine: combi_skin, product: naturium_cleanser)

# combi_skin = Routine.create!(name: "Routine for oily skin", am_pm: "AM", points_range: 2)
# RoutineProduct.new(routine: combi_skin, product: hyram_cleanser)

# combi_skin = Routine.create!(name: "Routine for oily skin", am_pm: "AM", points_range: 2)
# RoutineProduct.new(routine: combi_skin, product: rl_birch_cleanser)

# # SPF Combi

# combi_skin = Routine.create!(name: "Routine for oily skin", am_pm: "AM", points_range: 2)
# RoutineProduct.new(routine: combi_skin, product: inistree_spf)

# combi_skin = Routine.create!(name: "Routine for oily skin", am_pm: "AM", points_range: 2)
# RoutineProduct.new(routine: combi_skin, product: rl_dokdo_spf)

# combi_skin = Routine.create!(name: "Routine for oily skin", am_pm: "AM", points_range: 2)
# RoutineProduct.new(routine: combi_skin, product: beauty_of_joseon_spf)

# combi_skin = Routine.create!(name: "Routine for oily skin", am_pm: "AM", points_range: 2)
# RoutineProduct.new(routine: combi_skin, product: sun_bum_spf)

# combi_skin = Routine.create!(name: "Routine for oily skin", am_pm: "AM", points_range: 2)
# RoutineProduct.new(routine: combi_skin, product: scinic_spf)

# # tinted SPF

# combi_skin_tinted_spf = Routine.create!(name: "Routine for oily skin", am_pm: "AM", points_range: 2)
# RoutineProduct.new(routine: combi_skin_tinted_spf, product: sun_bum_tinted_spf)

# # Dry skin Routine PM

# # dry cream
# dry_skin = Routine.create!(name: "Routine for oily skin", am_pm: "PM", points_range: 3)
# RoutineProduct.new(routine: dry_skin, product: rl_birch_cream_dry)

# dry_skin = Routine.create!(name: "Routine for oily skin", am_pm: "PM", points_range: 3)
# RoutineProduct.new(routine: dry_skin, product: rl_soybean_cream_dry)

# dry_skin = Routine.create!(name: "Routine for oily skin", am_pm: "PM", points_range: 3)
# RoutineProduct.new(routine: dry_skin, product: cerave_cream_dry)

# dry_skin = Routine.create!(name: "Routine for oily skin", am_pm: "PM", points_range: 3)
# RoutineProduct.new(routine: dry_skin, product: rl_mugwort_cream_dry)

# # dry toner

# dry_skin = Routine.create!(name: "Routine for oily skin", am_pm: "PM", points_range: 3)
# RoutineProduct.new(routine: dry_skin, product: rl_dokdo_toner_dry)

# dry_skin = Routine.create!(name: "Routine for oily skin", am_pm: "PM", points_range: 3)
# RoutineProduct.new(routine: dry_skin, product: hero_toner_dry)

# dry_skin = Routine.create!(name: "Routine for oily skin", am_pm: "PM", points_range: 3)
# RoutineProduct.new(routine: dry_skin, product: byoma_cream)

# # dry cleanser

# dry_skin = Routine.create!(name: "Routine for oily skin", am_pm: "PM", points_range: 3)
# RoutineProduct.new(routine: dry_skin, product: peach_cleanser)

# dry_skin = Routine.create!(name: "Routine for oily skin", am_pm: "PM", points_range: 3)
# RoutineProduct.new(routine: dry_skin, product: goodlight_cleanser)

# dry_skin = Routine.create!(name: "Routine for oily skin", am_pm: "PM", points_range: 3)
# RoutineProduct.new(routine: dry_skin, product: krave_cleanser)

# dry_skin = Routine.create!(name: "Routine for oily skin", am_pm: "PM", points_range: 3)
# RoutineProduct.new(routine: dry_skin, product: rl_birch_cleanser_dry)

# dry_skin = Routine.create!(name: "Routine for oily skin", am_pm: "PM", points_range: 3)
# RoutineProduct.new(routine: dry_skin, product: aveeno_cleanser_dry)

# Dry skin Routine AM

# # dry cream

# dry_skin = Routine.create!(name: "Routine for oily skin", am_pm: "AM", points_range: 3)
# RoutineProduct.new(routine: dry_skin, product: rl_birch_cream_dry)

# dry_skin = Routine.create!(name: "Routine for oily skin", am_pm: "AM", points_range: 3)
# RoutineProduct.new(routine: dry_skin, product: rl_soybean_cream_dry)

# dry_skin = Routine.create!(name: "Routine for oily skin", am_pm: "AM", points_range: 3)
# RoutineProduct.new(routine: dry_skin, product: cerave_cream_dry)

# dry_skin = Routine.create!(name: "Routine for oily skin", am_pm: "AM", points_range: 3)
# RoutineProduct.new(routine: dry_skin, product: rl_mugwort_cream_dry)

# # dry toner

# dry_skin = Routine.create!(name: "Routine for oily skin", am_pm: "AM", points_range: 3)
# RoutineProduct.new(routine: dry_skin, product: rl_dokdo_toner_dry)

# dry_skin = Routine.create!(name: "Routine for oily skin", am_pm: "AM", points_range: 3)
# RoutineProduct.new(routine: dry_skin, product: hero_toner_dry)

# dry_skin = Routine.create!(name: "Routine for oily skin", am_pm: "AM", points_range: 3)
# RoutineProduct.new(routine: dry_skin, product: byoma_cream)

# # dry cleanser

# dry_skin = Routine.create!(name: "Routine for oily skin", am_pm: "AM", points_range: 3)
# RoutineProduct.new(routine: dry_skin, product: peach_cleanser)

# dry_skin = Routine.create!(name: "Routine for oily skin", am_pm: "AM", points_range: 3)
# RoutineProduct.new(routine: dry_skin, product: goodlight_cleanser)

# dry_skin = Routine.create!(name: "Routine for oily skin", am_pm: "AM", points_range: 3)
# RoutineProduct.new(routine: dry_skin, product: krave_cleanser)

# dry_skin = Routine.create!(name: "Routine for oily skin", am_pm: "AM", points_range: 3)
# RoutineProduct.new(routine: dry_skin, product: rl_birch_cleanser_dry)

# dry_skin = Routine.create!(name: "Routine for oily skin", am_pm: "AM", points_range: 3)
# RoutineProduct.new(routine: dry_skin, product: aveeno_cleanser_dry)

# # SPF DRY

# dry_skin = Routine.create!(name: "Routine for oily skin", am_pm: "AM", points_range: 3)
# RoutineProduct.new(routine: dry_skin, product: beauty_of_joseon_spf)

# dry_skin = Routine.create!(name: "Routine for oily skin", am_pm: "AM", points_range: 3)
# RoutineProduct.new(routine: dry_skin, product: inistree_spf)

# dry_skin = Routine.create!(name: "Routine for oily skin", am_pm: "AM", points_range: 3)
# RoutineProduct.new(routine: dry_skin, product: rl_birch_spf)

# # tinted SPF

# dry_skin_tinted_spf = Routine.create!(name: "Routine for oily skin", am_pm: "AM", points_range: 3)
# RoutineProduct.new(routine: dry_skin_tinted_spf, product: sun_bum_tinted_spf)

# # #  #     #     #     #  #      #

# # Routine am for oily_sensitive

# # oily sensitive cream am

# oily_sensitive_skin = Routine.create!(name: "Routine for oily sensitive skin", am_pm: "AM", points_range: 11)
# RoutineProduct.new(routine: oily_sensitive_skin, product: rl_mugwort_cream_oily)

# # oily sensitive toner am

# oily_sensitive_skin = Routine.create!(name: "Routine for oily sensitive skin", am_pm: "AM", points_range: 11)
# RoutineProduct.new(routine: oily_sensitive_skin, product: rl_mugwort_toner)

# # oily sensitive cleanser am

# oily_sensitive_skin = Routine.create!(name: "Routine for oily sensitive skin", am_pm: "AM", points_range: 11)
# RoutineProduct.new(routine: oily_sensitive_skin, product: cerave_cleanser)

# # oily SPF am

# oily_sensitive_skin = Routine.create!(name: "Routine for oily sensitive skin", am_pm: "AM", points_range: 11)
# RoutineProduct.new(routine: oily_sensitive_skin, product: rl_dokdo_spf)

# # tinted

# oily_sensitive_skin_tinted_spf = Routine.create!(name: "Routine for oily sensitive skin", am_pm: "AM", points_range: 11)
# RoutineProduct.new(routine: oily_sensitive_skin_tinted_spf, product: sun_bum_tinted_spf)

# # PM Routine

# # oily sensitive cream am

# oily_sensitive_skin = Routine.create!(name: "Routine for oily sensitive skin", am_pm: "PM", points_range: 11)
# RoutineProduct.new(routine: oily_sensitive_skin, product: rl_mugwort_cream_oily)

# # oily sensitive toner am

# oily_sensitive_skin = Routine.create!(name: "Routine for oily sensitive skin", am_pm: "PM", points_range: 11)
# RoutineProduct.new(routine: oily_sensitive_skin, product: rl_mugwort_toner)

# # oily sensitive cleanser am

# oily_sensitive_skin = Routine.create!(name: "Routine for oily sensitive skin", am_pm: "PM", points_range: 11)
# RoutineProduct.new(routine: oily_sensitive_skin, product: cerave_cleanser)

# # # # # #  # # # # #

# combi_sensitive_skin = Routine.create!(name: "Routine for combi sensitive skin", am_pm: "AM", points_range: 12)
# RoutineProduct.new(routine: combi_sensitive_skin, product: rl_mugwort_cream_combi)

# # combi sensitive toner am

# combi_sensitive_skin = Routine.create!(name: "Routine for combi sensitive skin", am_pm: "AM", points_range: 12)
# RoutineProduct.new(routine: combi_sensitive_skin, product: rl_mugwort_toner_combi)

# # combi sensitive cleanser am

# combi_sensitive_skin = Routine.create!(name: "Routine for combi sensitive skin", am_pm: "AM", points_range: 12)
# RoutineProduct.new(routine: combi_sensitive_skin, product: rl_birch_cleanser)

# # combi SPF am

# combi_sensitive_skin = Routine.create!(name: "Routine for combi sensitive skin", am_pm: "AM", points_range: 12)
# RoutineProduct.new(routine: combi_sensitive_skin, product: inistree_spf)

# # tinted

# combi_sensitive_skin_tinted_spf = Routine.create!(name: "Routine for combi sensitive skin", am_pm: "AM", points_range: 12)
# RoutineProduct.new(routine: combi_sensitive_skin_tinted_spf, product: sun_bum_tinted_spf)

# # PM

# combi_sensitive_skin = Routine.create!(name: "Routine for combi sensitive skin", am_pm: "PM", points_range: 12)
# RoutineProduct.new(routine: combi_sensitive_skin, product: rl_mugwort_toner_combi)

# # combi sensitive cleanser am

# combi_sensitive_skin = Routine.create!(name: "Routine for combi sensitive skin", am_pm: "PM", points_range: 12)
# RoutineProduct.new(routine: combi_sensitive_skin, product: rl_birch_cleanser)

# # combi SPF am

# combi_sensitive_skin = Routine.create!(name: "Routine for combi sensitive skin", am_pm: "PM", points_range: 12)
# RoutineProduct.new(routine: combi_sensitive_skin, product: inistree_spf)

# # dry sensitive cream AM

# dry_sensitive_skin = Routine.create!(name: "Routine for dry sensitive skin", am_pm: "AM", points_range: 13)
# RoutineProduct.new(routine: dry_sensitive_skin, product: rl_birch_cream_dry)

# # dry sensitive toner am

# dry_sensitive_skin = Routine.create!(name: "Routine for dry sensitive skin", am_pm: "AM", points_range: 13)
# RoutineProduct.new(routine: dry_sensitive_skin, product: rl_mugwort_toner_dry)

# # dry sensitive cleanser am

# dry_sensitive_skin = Routine.create!(name: "Routine for dry sensitive skin", am_pm: "AM", points_range: 13)
# RoutineProduct.new(routine: dry_sensitive_skin, product: aveeno_cleanser_dry)

# # dry SPF am

# dry_sensitive_skin = Routine.create!(name: "Routine for dry sensitive skin", am_pm: "AM", points_range: 13)
# RoutineProduct.new(routine: dry_sensitive_skin, product: rl_birch_spf)

# # tinted

# dry_sensitive_skin_tinted_spf = Routine.create!(name: "Routine for dry sensitive skin", am_pm: "AM", points_range: 13)
# RoutineProduct.new(routine: dry_sensitive_skin_tinted_spf, product: sun_bum_tinted_spf)

# # PM

# dry_sensitive_skin = Routine.create!(name: "Routine for dry sensitive skin", am_pm: "PM", points_range: 13)
# RoutineProduct.new(routine: dry_sensitive_skin, product: rl_birch_cream_dry)

# # combi sensitive toner am

# dry_sensitive_skin = Routine.create!(name: "Routine for dry sensitive skin", am_pm: "PM", points_range: 13)
# RoutineProduct.new(routine: dry_sensitive_skin, product: rl_mugwort_toner)

# # combi cleanser

# dry_sensitive_skin = Routine.create!(name: "Routine for dry sensitive skin", am_pm: "PM", points_range: 13)
# RoutineProduct.new(routine: dry_sensitive_skin, product: aveeno_cleanser_dry)

puts "Finished routines"
