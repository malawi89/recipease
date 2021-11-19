# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Creating Recipes..."
3.times do
  Recipe.create(name: Faker::Food.dish, meal: "Dinner", url: "www.test.com")
end

puts "Done"
puts "Creating Ingredients..."
15.times do
  Ingredient.create(name: Faker::Food.ingredient)
end

puts "Done!"
puts "Creating Recipe Ingredients..."
Recipe.all.each do |recipe|
  ingredient = Faker::Food.measurement

  4.times do
    RecipeIngredient.create(recipe: recipe, ingredient: Ingredient.all.sample, amount: ingredient.split(' ').first, unit: ingredient.split(' ').last)
  end
end

puts "Done!!!"