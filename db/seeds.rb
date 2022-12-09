
# AnswerClass:  @user_answer: string, @category_linked_to_answer
# def ChooseRightCategoryForUserBasedOnAnswers() do

puts "Cleaning DB"
RoutineProduct.delete_all
UserRoutine.delete_all
Routine.delete_all
Product.delete_all
UserAnswer.delete_all
Answer.delete_all
Question.delete_all
Quiz.delete_all
Category.delete_all

puts "DB is clear!"

quiz = Quiz.new
puts "Quiz created"

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

answer_one = Answer.new(text: "Signs of aging",
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
answer_five = Answer.new(text: "None",
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

question_four = Question.new(description: "Choose your skin color",
                            #  has_points: false,
                             quiz: quiz
                            )
question_four.save!
puts "Question 4 created"

answer_one = Answer.new(text: "Dark",
                        points: 0
                         )
answer_one.question = question_four
answer_one.save!
answer_two = Answer.new(text: "Light",
                          points: 0
                        )
answer_two.question = question_four
answer_two.save!
puts "Answer created to question 4"

question_five = Question.new(description: "What kind product textures do you prefer?",
                            #  has_points: false,
                             quiz: quiz
                            )
question_five.save!
puts "Question 5 created"

answer_one = Answer.new(text: "Creams and balms",
                        points: 0
                         )
answer_one.question = question_five
answer_one.save!
answer_two = Answer.new(text: "Gels and lotions",
                          points: 0
                         )
answer_two.question = question_five
answer_two.save!
answer_three = Answer.new(text: "Any texture",
                          points: 0
                         )
answer_three.question = question_five
answer_three.save!
puts "Answers created to question 5"


question_six = Question.new(description: "How often are you using skincare products?",
                            # has_points: false,
                            quiz: quiz
                           )
question_six.save!
puts "Question 6 created"

answer_one = Answer.new(text: "Everyday",
                          points: 0
                        )
answer_one.question = question_six
answer_one.save!
answer_two = Answer.new(text: "Once and twice a week",
                          points: 0
                        )
answer_two.question = question_six
answer_two.save!
answer_three = Answer.new(text: "Never",
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

cerave_cleanser = Product.new(name: "CeraVe Foaming Cleanser for Normal to Oily Skin", price: 15)
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

aveeno_cleanser = Product.new(name: "Aveeno Calm and Restore Nourishing Oat Cleanser", price: 10)
aveeno_cleanser.category = cleanser
aveeno_cleanser.save!

# Toner

# Oily
puts "creating product Toners"
rl_dokdo_toner = Product.new(name: "ROUND LAB Dokdo Toner", price: 17)
rl_dokdo_toner.category = toner
rl_dokdo_toner.save!

rl_mugwort_toner = Product.new(name: "ROUND LAB Mugwort Calming Toner", price: 18)
rl_mugwort_toner.category = toner
rl_mugwort_toner.save!

hero_toner = Product.new(name: "Clear Collective Toner from Hero Cosmetics", price: 12)
hero_toner.category = toner
hero_toner.save!

# Dry

rl_birch_toner = Product.new(name: "ROUND LAB Birch Juice Moisturizing Toner", price: 19)
rl_birch_toner.category = toner
rl_birch_toner.save!

# Cream

# Oily
puts "creating product Creams"

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

rl_dokdo_cream = Product.new(name: "ROUND LAB 1025 DOKDO Cream", price: 22)
rl_dokdo_cream.category = cream
rl_dokdo_cream.save!

# Dry

rl_soybean_cream = Product.new(name: "ROUND LAB Soybean Nourishing Cream", price: 25)
rl_soybean_cream.category = cream
rl_soybean_cream.save!

rl_mugwort_cream = Product.new(name: "ROUND LAB Mugwort Calming Cream", price: 26)
rl_mugwort_cream.category = cream
rl_mugwort_cream.save!

rl_birch_cream = Product.new(name: "ROUND LAB Birch Juice Moisturizing Cream", price: 28)
rl_birch_cream.category = cream
rl_birch_cream.save!

cerave_cream = Product.new(name: "CeraVe Healing Ointment", price: 20)
cerave_cream.category = cream
cerave_cream.save!

cerave_cream_pm = Product.new(name: "CeraVe PM Facial Moisturizing Lotion", price: 18.99)
cerave_cream_pm.category = cream
cerave_cream_pm.save!

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

scinic_spf = Product.new(name: "SCINIC - Enjoy Super Mild Sun Essence SPF50+ PA++++", price: 9)
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
                                product: hero_toner
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
                                product: hero_toner
                                )
product_two.save!

product_three = RoutineProduct.new(routine: combi,
                                  product: rl_dokdo_cream
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
                                product: rl_birch_toner
                                )
product_two.save!

product_three = RoutineProduct.new(routine: dry,
                                  product: rl_birch_cream
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
                                  product: rl_mugwort_cream
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
                                product: rl_mugwort_toner
                                )
product_two.save!

product_three = RoutineProduct.new(routine: combi_sensitive,
                                  product: rl_mugwort_cream
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
                                product: aveeno_cleanser
                                )
product_one.save!

product_two = RoutineProduct.new(routine: dry_sensitive,
                                product: rl_mugwort_toner
                                )
product_two.save!

product_three = RoutineProduct.new(routine: dry_sensitive,
                                  product: rl_birch_cream
                                  )
product_three.save!

product_four = RoutineProduct.new(routine: dry_sensitive,
                                 product: rl_birch_spf
                                 )
product_four.save!

puts "Routin for dry sensitive skin done!"


puts "Creating Routine for oily aging skin"

oily_aging = Routine.create!(name: "Routine for oily aging skin",
                             am_pm: "AM",
                             points_range: 0
                            )

product_one = RoutineProduct.new(routine: oily_aging,
                                product: cerave_cleanser
                                )
product_one.save!

product_two = RoutineProduct.new(routine: oily_aging,
                                product: rl_dokdo_toner
                                )
product_two.save!

product_three = RoutineProduct.new(routine: oily_aging,
                                  product: rl_soybean_cream
                                  )
product_three.save!

product_four = RoutineProduct.new(routine: oily_aging,
                                 product: beauty_of_joseon_spf
                                 )
product_four.save!

puts "Routin for oily aging skin done!"

puts "Creating Routine for combi aging skin"

combi_aging = Routine.create!(name: "Routine for combi aging skin",
                             am_pm: "AM",
                             points_range: 0
                            )

product_one = RoutineProduct.new(routine: combi_aging,
                                product: hyram_cleanser
                                )
product_one.save!

product_two = RoutineProduct.new(routine: combi_aging,
                                product: rl_dokdo_toner
                                )
product_two.save!

product_three = RoutineProduct.new(routine: combi_aging,
                                  product: rl_soybean_cream
                                  )
product_three.save!

product_four = RoutineProduct.new(routine: combi_aging,
                                 product: beauty_of_joseon_spf
                                 )
product_four.save!

puts "Routin for combi aging skin done!"

puts "Creating Routine for dry aging skin"

dry_aging = Routine.create!(name: "Routine for dry aging skin",
                             am_pm: "AM",
                             points_range: 0
                            )

product_one = RoutineProduct.new(routine: dry_aging,
                                product: krave_cleanser
                                )
product_one.save!

product_two = RoutineProduct.new(routine: dry_aging,
                                product: rl_birch_toner
                                )
product_two.save!

product_three = RoutineProduct.new(routine: dry_aging,
                                  product: rl_soybean_cream
                                  )
product_three.save!

product_four = RoutineProduct.new(routine: dry_aging,
                                 product: rl_birch_spf
                                 )
product_four.save!

puts "Routin for dry aging skin done!"

puts "Creating Routine for oily acne skin"

oily_acne = Routine.create!(name: "Routine for oily acne skin",
                             am_pm: "AM",
                             points_range: 0
                            )

product_one = RoutineProduct.new(routine: oily_acne,
                                product: inkey_cleanser
                                )
product_one.save!

product_two = RoutineProduct.new(routine: oily_acne,
                                product: hero_toner
                                )
product_two.save!

product_three = RoutineProduct.new(routine: oily_acne,
                                  product: rl_dokdo_cream
                                  )
product_three.save!

product_four = RoutineProduct.new(routine: oily_acne,
                                 product: scinic_spf
                                 )
product_four.save!

puts "Routin for oily acne skin done!"

puts "Creating Routine for combi acne skin"

combi_acne = Routine.create!(name: "Routine for combi acne skin",
                             am_pm: "AM",
                             points_range: 0
                            )

product_one = RoutineProduct.new(routine: combi_acne,
                                product: hyram_cleanser
                                )
product_one.save!

product_two = RoutineProduct.new(routine: combi_acne,
                                product: rl_dokdo_toner
                                )
product_two.save!

product_three = RoutineProduct.new(routine: combi_acne,
                                  product: rl_dokdo_cream
                                  )
product_three.save!

product_four = RoutineProduct.new(routine: combi_acne,
                                 product: scinic_spf
                                 )
product_four.save!

puts "Routin for combi acne skin done!"

puts "Creating Routine for dry acne skin"

dry_acne = Routine.create!(name: "Routine for dry acne skin",
                             am_pm: "AM",
                             points_range: 0
                            )

product_one = RoutineProduct.new(routine: dry_acne,
                                product: aveeno_cleanser
                                )
product_one.save!

product_two = RoutineProduct.new(routine: dry_acne,
                                product: rl_mugwort_toner
                                )
product_two.save!

product_three = RoutineProduct.new(routine: dry_acne,
                                  product: rl_mugwort_cream
                                  )
product_three.save!

product_four = RoutineProduct.new(routine: dry_acne,
                                 product: inistree_spf
                                 )
product_four.save!

puts "Routin for dry acne skin done!"

puts "Creating Routine for oily pigmentation skin"

oily_pigment = Routine.create!(name: "Routine for oily pigmentation skin",
                             am_pm: "AM",
                             points_range: 0
                            )

product_one = RoutineProduct.new(routine: oily_pigment,
                                product: tula_cleanser
                                )
product_one.save!

product_two = RoutineProduct.new(routine: oily_pigment,
                                product: rl_dokdo_toner
                                )
product_two.save!

product_three = RoutineProduct.new(routine: oily_pigment,
                                  product: rl_dokdo_cream
                                  )
product_three.save!

product_four = RoutineProduct.new(routine: oily_pigment,
                                 product: force_spf
                                 )
product_four.save!

puts "Routin for oily pigmentation skin done!"

puts "Creating Routine for combi pigmentation skin"

combi_pigment = Routine.create!(name: "Routine for combi pigmentation skin",
                                am_pm: "AM",
                                points_range: 0
                               )

product_one = RoutineProduct.new(routine: combi_pigment,
                                product: tula_cleanser
                                )
product_one.save!

product_two = RoutineProduct.new(routine: combi_pigment,
                                product: rl_dokdo_toner
                                )
product_two.save!

product_three = RoutineProduct.new(routine: combi_pigment,
                                  product: rl_dokdo_cream
                                  )
product_three.save!

product_four = RoutineProduct.new(routine: combi_pigment,
                                 product: force_spf
                                 )
product_four.save!

puts "Routine for combi pigmentation skin done!"

puts "Creating Routine for dry pigmentation skin"
dry_pigment = Routine.create!(name: "Routine for dry pigmentation skin",
                                am_pm: "AM",
                                points_range: 0
                               )

product_one = RoutineProduct.new(routine: dry_pigment,
                                product: krave_cleanser
                                )
product_one.save!

product_two = RoutineProduct.new(routine: dry_pigment,
                                product: rl_dokdo_toner
                                )
product_two.save!

product_three = RoutineProduct.new(routine: dry_pigment,
                                  product: rl_dokdo_cream
                                  )
product_three.save!

product_four = RoutineProduct.new(routine: dry_pigment,
                                 product: beauty_of_joseon_spf
                                 )
product_four.save!

puts "Routin for dry pigmentation skin done!"

puts "Creating Routine for oily aging sensitive skin"

oily_aging_sensitive = Routine.create!(name: "Routine for oily aging sensitive skin",
                             am_pm: "AM",
                             points_range: 0
                            )

product_one = RoutineProduct.new(routine: oily_aging_sensitive,
                                product: cerave_cleanser
                                )
product_one.save!

product_two = RoutineProduct.new(routine: oily_aging_sensitive,
                                product: rl_dokdo_toner
                                )
product_two.save!

product_three = RoutineProduct.new(routine: oily_aging_sensitive,
                                  product: rl_soybean_cream
                                  )
product_three.save!

product_four = RoutineProduct.new(routine: oily_aging_sensitive,
                                 product: rl_dokdo_spf
                                 )
product_four.save!

puts "Routin for oily aging sensitive skin done!"

puts "Creating Routine for combi aging sensitive skin"

combi_aging_sensitive = Routine.create!(name: "Routine for combi aging sensitive skin",
                             am_pm: "AM",
                             points_range: 0
                            )

product_one = RoutineProduct.new(routine: combi_aging_sensitive,
                                product: hyram_cleanser
                                )
product_one.save!

product_two = RoutineProduct.new(routine: combi_aging_sensitive,
                                product: rl_dokdo_toner
                                )
product_two.save!

product_three = RoutineProduct.new(routine: combi_aging_sensitive,
                                  product: rl_soybean_cream
                                  )
product_three.save!

product_four = RoutineProduct.new(routine: combi_aging_sensitive,
                                 product: rl_dokdo_spf
                                 )
product_four.save!

puts "Routin for combi aging sensitive skin done!"

puts "Creating Routine for dry aging sensitive skin"

dry_aging_sensitive = Routine.create!(name: "Routine for dry aging sensitive skin",
                             am_pm: "AM",
                             points_range: 0
                            )

product_one = RoutineProduct.new(routine: dry_aging_sensitive,
                                product: krave_cleanser
                                )
product_one.save!

product_two = RoutineProduct.new(routine: dry_aging_sensitive,
                                product: rl_birch_toner
                                )
product_two.save!

product_three = RoutineProduct.new(routine: dry_aging_sensitive,
                                  product: rl_soybean_cream
                                  )
product_three.save!

product_four = RoutineProduct.new(routine: dry_aging_sensitive,
                                 product: rl_birch_spf
                                 )
product_four.save!

puts "Routin for dry aging sensitive skin done!"

puts "Creating Routine for oily acne sensitive skin"

oily_acne_sensitive = Routine.create!(name: "Routine for oily acne sensitive skin",
                             am_pm: "AM",
                             points_range: 0
                            )

product_one = RoutineProduct.new(routine: oily_acne_sensitive,
                                product: cerave_cleanser
                                )
product_one.save!

product_two = RoutineProduct.new(routine: oily_acne_sensitive,
                                product: hero_toner
                                )
product_two.save!

product_three = RoutineProduct.new(routine: oily_acne_sensitive,
                                  product: rl_dokdo_cream
                                  )
product_three.save!

product_four = RoutineProduct.new(routine: oily_acne_sensitive,
                                 product: scinic_spf
                                 )
product_four.save!

puts "Routin for oily acne sensitive skin done!"

puts "Creating Routine for combi acne sensitive skin"

combi_acne_sensitive = Routine.create!(name: "Routine for combi acne sensitive skin",
                             am_pm: "AM",
                             points_range: 0
                            )

product_one = RoutineProduct.new(routine: combi_acne_sensitive,
                                product: hyram_cleanser
                                )
product_one.save!

product_two = RoutineProduct.new(routine: combi_acne_sensitive,
                                product: rl_dokdo_toner
                                )
product_two.save!

product_three = RoutineProduct.new(routine: combi_acne_sensitive,
                                  product: rl_dokdo_cream
                                  )
product_three.save!

product_four = RoutineProduct.new(routine: combi_acne_sensitive,
                                 product: scinic_spf
                                 )
product_four.save!

puts "Routin for combi acne sensitive skin done!"

puts "Creating Routine for dry acne sensitive skin"

dry_acne_sensitive = Routine.create!(name: "Routine for dry acne sensitve skin",
                             am_pm: "AM",
                             points_range: 0
                            )

product_one = RoutineProduct.new(routine: dry_acne_sensitive,
                                product: aveeno_cleanser
                                )
product_one.save!

product_two = RoutineProduct.new(routine: dry_acne_sensitive,
                                product: rl_mugwort_toner
                                )
product_two.save!

product_three = RoutineProduct.new(routine: dry_acne_sensitive,
                                  product: rl_mugwort_cream
                                  )
product_three.save!

product_four = RoutineProduct.new(routine: dry_acne_sensitive,
                                 product: inistree_spf
                                 )
product_four.save!

puts "Routin for dry acne sensitive skin done!"

puts "Creating Routine for oily pigmentation senisitive skin"

oily_pigment_sensitive = Routine.create!(name: "Routine for oily pigmentation sensitive skin",
                             am_pm: "AM",
                             points_range: 0
                            )

product_one = RoutineProduct.new(routine: oily_pigment_sensitive,
                                product: tula_cleanser
                                )
product_one.save!

product_two = RoutineProduct.new(routine: oily_pigment_sensitive,
                                product: rl_dokdo_toner
                                )
product_two.save!

product_three = RoutineProduct.new(routine: oily_pigment_sensitive,
                                  product: rl_dokdo_cream
                                  )
product_three.save!

product_four = RoutineProduct.new(routine: oily_pigment_sensitive,
                                 product: force_spf
                                 )
product_four.save!

puts "Routin for oily pigmentation sensitive skin done!"

puts "Creating Routine for combi pigmentation sensitive skin"

combi_pigment_sensitive = Routine.create!(name: "Routine for combi pigmentation sensitive skin",
                                am_pm: "AM",
                                points_range: 0
                               )

product_one = RoutineProduct.new(routine: combi_pigment_sensitive,
                                product: tula_cleanser
                                )
product_one.save!

product_two = RoutineProduct.new(routine: combi_pigment_sensitive,
                                product: rl_dokdo_toner
                                )
product_two.save!

product_three = RoutineProduct.new(routine: combi_pigment_sensitive,
                                  product: rl_dokdo_cream
                                  )
product_three.save!

product_four = RoutineProduct.new(routine: combi_pigment_sensitive,
                                 product: force_spf
                                 )
product_four.save!

puts "Routine for combi pigmentation sensitive skin done!"

puts "Creating Routine for dry pigmentation sensitive skin"
dry_pigment_sensitive = Routine.create!(name: "Routine for dry pigmentation sensitive skin",
                                am_pm: "AM",
                                points_range: 0
                               )

product_one = RoutineProduct.new(routine: dry_pigment_sensitive,
                                product: krave_cleanser
                                )
product_one.save!

product_two = RoutineProduct.new(routine: dry_pigment_sensitive,
                                product: rl_dokdo_toner
                                )
product_two.save!

product_three = RoutineProduct.new(routine: dry_pigment_sensitive,
                                  product: rl_dokdo_cream
                                  )
product_three.save!

product_four = RoutineProduct.new(routine: dry_pigment_sensitive,
                                 product: beauty_of_joseon_spf
                                 )
product_four.save!

puts "Routin for dry pigmentation sensitive skin done!"

puts "Finished routines"
