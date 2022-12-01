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

puts 'Creating products...'

# SPF

inistree_spf = Product.new(name: "Isntree Hyaluronic Acid Watery Sun Gel SPF50+", price: 13, type: "spf")
inistree_spf.save!

sun_bum_spf = Product.new(name: "Sun Bum Mineral Face Sunscreen Lotion SPF 30", price: 15, type: "spf")
sun_bum_spf.save!

beauty_of_joseon_spf = Product.new(name: "Beauty of Joseon Relief Sun: Rice + Probiotic + PA++++ SPF 50", price: 18, type: "spf")
beauty_of_joseon_spf.save!

sun_bum_tinted_spf = Product.new(name: "Sun Bum Mineral SPF 30 Tinted Sunscreen Face Lotion", price: 15, type: "spf")
sun_bum_tinted_spf.save!

rl_birch_spf = Product.new(name: "Round Lab Birch Juice Moisturizing Sunscreen SPF50+ PA++++", price: 22 , type: "spf")
rl_birch_spf.save!

rl_dokdo_spf = Product.new(name: "Round Lab Dokdo 1025 Sunscreen SPF50+ PA++++", price: 20, type: "spf")
rl_dokdo_spf.save!

scinic_spf = Product.new(name: "SCINIC - Enjoy Super Mild Sun Essence SPF50+ PA++++ - 50ml", price: 13, type: "spf")
scinic_spf.save!

force_spf = Product.new(name: "Force Shield Superlight Sunscreen Broad Spectrum SPF 30", price: 19, type: "spf")
force_spf.save!

# Cleansers
# Oily

yttp_cleanser = Product.new(name: "YTTP Kale + Green Tea SUPERFOOD CLEANSER", price: 36, type: "cleanser")
yttp_cleanser.save!

inkey_cleanser = Product.new(name: "The Inkey List Salicylic Acid Cleanser", price: 10.99, type: "cleanser")
inkey_cleanser.save!

tula_cleanser = Product.new(name: "Tula 3-in-1 Acne Cleanser, Mask & Spot Treatment", price: 26, type: "cleanser")
tula_cleanser.save!

# Combi
naturium_cleanser = Product.new(name: "Naturium Niacinamide Cleansing Gel", price: 18, type: "cleanser")
naturium_cleanser.save!

timy_cleanser = Product.new(name: "Then I Met You Soothing Tea Cleansing Gel", price: 36, type: "cleanser")
timy_cleanser.save!

hyram_cleanser = Product.new(name: "Selfless by Hyram Centella & Green Tea Daily Gel Cleanser", price: 10, type: "cleanser")
hyram_cleanser.save!

rl_birch_cleanser = Product.new(name: "ROUND LAB Birch Juice Moisturizing Cleanser", price: 14.30, type: "cleanser")
rl_birch_cleanser.save!

# Dry

krave_cleanser = Product.new(name: "Krave Beauty Matcha Hemp Hydrating Cleanser", price: 16, type: "cleanser")
krave_cleanser.save!

goodlight_cleanser = Product.new(name: "GoodLight Cosmic Dew Water Cleanser", price: 18, type: "cleanser")
goodlight_cleanser.save!

peach_cleanser = Product.new(name: "Peach & Lily Power Calm Hydrating Gel Cleanser", price: 28, type: "cleanser")
peach_cleanser.save!

aveeno_cleanser = Product.new(name: "Aveeno Calm and Restore Nourishing Oat Cleanser", price: 10, type: "cleanser")
aveeno_cleanser.save!

rl_birch_cleanser = Product.new(name: "ROUND LAB Birch Juice Moisturizing Cleanser", price: 14.30, type: "cleanser")
rl_birch_cleanser.save!

# Toner

# Oily
rl_dokdo_toner = Product.new(name: "ROUND LAB Dokdo Toner", price: 17, type: "toner")
rl_dokdo_toner.save!

rl_mugwort_toner = Product.new(name: "ROUND LAB Mugwort Calming Toner", price: 18, type: "toner")
rl_mugwort_toner.save!

hero_toner = Product.new(name: "Clear Collective Toner from Hero Cosmetics", price: 12, type: "toner")
hero_toner.save!

# Combi
rl_dokdo_toner = Product.new(name: "ROUND LAB Dokdo Toner", price: 17, type: "toner")
rl_dokdo_toner.save!

rl_mugwort_toner = Product.new(name: "ROUND LAB Mugwort Calming Toner", price: 18, type: "toner")
rl_mugwort_toner.save!

hero_toner = Product.new(name: "Clear Collective Toner from Hero Cosmetics", price: 12, type: "toner")
hero_toner.save!

# Dry
rl_birch_toner = Product.new(name: "ROUND LAB Birch Juice Moisturizing Toner", price: 19, type: "toner")
rl_birch_toner.save!

rl_dokdo_toner = Product.new(name: "ROUND LAB Dokdo Toner", price: 17, type: "toner")
rl_dokdo_toner.save!

hero_toner = Product.new(name: "Clear Collective Toner from Hero Cosmetics", price: 12, type: "toner")
hero_toner.save!

# Cream

# Oily

rl_dokdo_cream = Product.new(name: "ROUND LAB 1025 DOKDO Cream", price: 22, type: "cream")
rl_dokdo_cream.save!

rl_mugwort_cream = Product.new(name: "ROUND LAB Mugwort Calming Cream", price: 28, type: "cream")
rl_mugwort_cream.save!

rovectin_cream = Product.new(name: "Rovectin Lotus Water Cream", price: 20, type: "cream")
rovectin_cream.save!

codex_cream = Product.new(name: "Codex Shaant Balancing Oil Control Cream", price: 35, type: "cream")
codex_cream.save!

# Combi

byoma_cream = Product.new(name: "Byoma Moisturizing Gel Cream", price: 14, type: "cream")
byoma_cream.save!

rl_dokdo_cream = Product.new(name: "ROUND LAB 1025 DOKDO Cream", price: 22, type: "cream")
rl_dokdo_cream.save!

rl_mugwort_cream = Product.new(name: "ROUND LAB Mugwort Calming Cream", price: 28, type: "cream")
rl_mugwort_cream.save!

# Dry

rl_soybean_cream = Product.new(name: "ROUND LAB Soybean Nourishing Cream", price: 25, type: "cream")
rl_soybean_cream.save!

rl_mugwort_cream = Product.new(name: "ROUND LAB Mugwort Calming Cream", price: 26, type: "cream")
rl_mugwort_cream.save!

rl_birch_cream = Product.new(name: "ROUND LAB Birch Juice Moisturizing Cream", price: 28, type: "cream")
rl_birch_cream.save!

cerave_cream = Product.new(name: "CeraVe Healing Ointment", price: 20, type: "cream")
cerave_cream.save!

cerave_cream_pm = Product.new(name: "CeraVe PM Facial Moisturizing Lotion", price: 18.99, type: "cream")
cerave_cream_pm.save!

puts 'Finished!'

# puts 'Creating routine...'

# Routine

oily_skin = Routine.create!(name: "Routine for oily skin", am_pm: "AM")
RoutineProduct.new(routine: oily_skin, product: rl_dokdo_cream, product: )

combi_skin = Routine.create!(name: "Routine for oily skin", am_pm: "AM")
RoutineProduct.new(routine: combi_skin, product: rl_dokdo_cream, product:)


# combi_skin = Routine.new(name: "Routin for combination skin",  description: "Use spf every day before going outside, even if there is no sun", points_range: , am_pm: "Am")
# combi_skin.save!

# dry_skin = Routin.new(name: "Routin for dry skin",  description: "Use spf every day before going outside, even if there is no sun", points_range: , am_pm: "Am")
# dry_skin.save!


# oily_skin = Routine.new(name: "Routin for oily skin", description: "Use spf every day before going outside, even if there is no sun", points_range: , am_pm: "pm")
# oily_skin.save!

# combi_skin = Routine.new(name: "Routin for combination skin",  description: "Use spf every day before going outside, even if there is no sun", points_range: , am_pm: "pm")
# combi_skin.save!

# dry_skin = Routin.new(name: "Routin for dry skin",  description: "Use spf every day before going outside, even if there is no sun", points_range: , am_pm: "pm")
# dry_skin.save!

