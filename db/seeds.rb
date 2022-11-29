# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Creating products...'
inistree_dry_norm = Product.new(name: "Isntree Hyaluronic Acid Watery Sun Gel SPF50+", price: 19, type: "spf")
inistree.save!

sun_bum_sensitive = Product.new(name: "Sun Bum Mineral Face Sunscreen Lotion SPF 30", price: 20, type: "spf")
sun_bum.save!

beauty_of_joseon = Product.new(name: "Beauty of Joseon Relief Sun: Rice + Probiotic + PA++++ SPF 50", price: 15, type: "spf")
beauty_of_joseon.save!

la_roche = Product.new(name: "La Roche Posay Anthelios Mineral Tinted Ultra-Fluid Face Sunscreen Lotion For Sensitive Skin SPF 50", price: , type: "spf")
product.save!

rl_birch_spf_dry = Product.new(name: "Round Lab Birch Juice Moisturizing Sunscreen SPF50+ PA++++", price: , type: "spf")
rl_birch_spf_dry.save!

rl_dokdo_spf_normal_oily = Product.new(name: "Round Lab Dokdo 1025 Sunscreen SPF50+ PA++++", price: , type: "spf")
rl_dokdo_spf_normal_oily.save!

# product = Product.new(name: "")
# chez_gladines.save!
# puts 'Finished!'
