# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Type.create(category: 'main', breakfast: true)
Type.create(category: 'main', breakfast: false)
Type.create(category: 'side', breakfast: true)
Type.create(category: 'side', breakfast: false)
Type.create(category: 'snack', breakfast: true)
Type.create(category: 'snack', breakfast: false)
Type.create(category: 'shake', breakfast: true)
Type.create(category: 'shake', breakfast: false)




pizza = Food.create(name: 'pizza', is_vegitarian: false, is_glutan_free: false, calories: 410, protein: 32, carbs: 65, fat: 20, cook_time: 15, prep_time: 15, servings: 2, type_id: 2)
salad = Food.create(name: 'salad', is_vegitarian: true, is_glutan_free: false, calories: 200, protein: 10, carbs: 15, fat: 10, cook_time: 0, prep_time: 10, type_id: 4)



pizza.directions.create(step: 1, description: 'make dough')
pizza.directions.create(step: 2, description: 'put in oven')

Ingredient.create(name: 'dough')
pizza.amounts.create(quantity: 0.23, measurement: 'cups', ingredient_id: 1)
