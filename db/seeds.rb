#########
# Types #
#########

Type.create(id: 1, category: 'main', breakfast: true)
Type.create(id: 2, category: 'main', breakfast: false)
Type.create(id: 3, category: 'side', breakfast: true)
Type.create(id: 4, category: 'side', breakfast: false)
Type.create(id: 5, category: 'snack', breakfast: true)
Type.create(id: 6, category: 'snack', breakfast: false)
Type.create(id: 7, category: 'shake', breakfast: true)
Type.create(id: 8, category: 'shake', breakfast: false)


#############
# Breakfast #
#############


# Chocolate Banana Pancakes

Ingredient.create(id: 1, name: 'whole wheat pastry flour')
Ingredient.create(id: 2, name: 'baking powder')
Ingredient.create(id: 3, name: 'salt')
Ingredient.create(id: 4, name: 'unsweetened baking cocoa')
Ingredient.create(id: 5, name: 'unsweetened almond milk')
Ingredient.create(id: 6, name: 'banana')
Ingredient.create(id: 7, name: 'stevia')


choc_pan = Food.create(name: 'Chocolate Banana Pancakes', calories: 430, carbs: 94, protein: 6, fat: 2, type_id: 1, cook_time: 10, prep_time: 10, servings: 1)
choc_pan.directions.create(step: 1, description: 'Place all ingredients into a bowl and stir until thick consistency (blender also works)')
choc_pan.directions.create(step: 2, description: 'Pour batter onto non-stick pan on stove-top with medium heat')
choc_pan.directions.create(step: 3, description: 'Flip pancake after a few minutes or until golden brown on one side')
choc_pan.directions.create(step: 4, description: 'Repeat with the rest of the batter')

choc_pan.amounts.create(quantity: '2/3', measurement: 'cups', ingredient_id: 1)
choc_pan.amounts.create(quantity: '1', measurement: 'tsp', ingredient_id: 2)
choc_pan.amounts.create(quantity: '1', measurement: 'pinch', ingredient_id: 3)
choc_pan.amounts.create(quantity: '2', measurement: 'tbsp', ingredient_id: 4)
choc_pan.amounts.create(quantity: '1', measurement: 'cup', ingredient_id: 5)
choc_pan.amounts.create(quantity: '1', measurement: 'whole', ingredient_id: 6)
choc_pan.amounts.create(quantity: '1', measurement: 'tbsp', ingredient_id: 7)


#Blueberry Protein Pancakes

Ingredient.create(id: 9, name: 'egg whites')
Ingredient.create(id: 10, name: 'oats')
Ingredient.create(id: 11, name: 'vanilla whey protein')
Ingredient.create(id: 12, name: 'blueberries')

blu_pan = Food.create(name: 'Blueberry Protein Pancakes', calories: 410, carbs: 36, protein: 56, fat: 4, type_id: 1, cook_time: 10, prep_time: 10, servings: 1)
blu_pan.directions.create(step: 1, description: 'Place egg whites, oats, and protein powder into blender')
blu_pan.directions.create(step: 2, description: 'Blend until thick')
blu_pan.directions.create(step: 3, description: 'Pour batter onto non-stick pan on stove-top with medium heat')
blu_pan.directions.create(step: 4, description: 'Flip pancake after a few minutes or until golden brown on one side')
blu_pan.directions.create(step: 5, description: 'Repeat with the rest of the batter')

blu_pan.amounts.create(quantity: '1', measurement: 'cups', ingredient_id: 9)
blu_pan.amounts.create(quantity: '1/2', measurement: 'cups', ingredient_id: 10)
blu_pan.amounts.create(quantity: '1', measurement: 'scoops', ingredient_id: 11)
blu_pan.amounts.create(quantity: '1/4', measurement: 'cups', ingredient_id: 12)
blu_pan.amounts.create(quantity: '1', measurement: 'tsp', ingredient_id: 7)


# Scrambled Egg Burrito

Ingredient.create(id: 13, name: 'whole wheat tortilla')
Ingredient.create(id: 14, name: 'eggs')
Ingredient.create(id: 15, name: 'salsa')
Ingredient.create(id: 16, name: 'hot sauce')
Ingredient.create(id: 17, name: 'pepper')
Ingredient.create(id: 18, name: 'garlic powder')

egg_burr = Food.create(name: 'Scrambled Egg Burrito', calories: 290, carbs: 19, protein: 26, fat: 10, type_id: 1, cook_time: 5, prep_time: 5, servings: 1)
egg_burr.directions.create(step: 1, description: 'Pour egg whites and whole egg onto non-stick stove-top cooking pan on medium')
egg_burr.directions.create(step: 2, description: 'Microwave tortilla for 20 seconds')
egg_burr.directions.create(step: 3, description: 'Once eggs are cooked pour ontop of warm tortilla')
egg_burr.directions.create(step: 4, description: 'Add sauce and seasoning and fold tortilla')

egg_burr.amounts.create(quantity: '1', measurement: nil, ingredient_id: 13)
egg_burr.amounts.create(quantity: '1', measurement: nil, ingredient_id: 14)
egg_burr.amounts.create(quantity: '2/3', measurement: 'cups', ingredient_id: 9)
egg_burr.amounts.create(quantity: '2', measurement: 'tbsp', ingredient_id: 15)
egg_burr.amounts.create(quantity: '1', measurement: 'tsp', ingredient_id: 16)
egg_burr.amounts.create(quantity: '1', measurement: 'pinch', ingredient_id: 17)
egg_burr.amounts.create(quantity: '1', measurement: 'tsp', ingredient_id: 18)




#################
# Lunch & dinner#
#################


# Chicken Parm

Ingredient.create(id: 19, name: 'chicken breasts')
Ingredient.create(id: 20, name: 'shredded parmesan cheese')
Ingredient.create(id: 21, name: 'bread crumbs')
Ingredient.create(id: 22, name: 'basil')
Ingredient.create(id: 23, name: 'marinara sauce')
Ingredient.create(id: 24, name: 'low-fat mozzarella cheese')

chick_parm = Food.create(name: 'Oven-Baked Chicken Parmesan', calories: 680, carbs: 68, protein: 120, fat: 12, type_id: 2, cook_time: 45, prep_time: 10, servings: 2)
chick_parm.directions.create(step: 1, description: 'Preheat oven to 45O°F')
chick_parm.directions.create(step: 2, description: 'Cover bottom of baking pan with aluminum foil')
chick_parm.directions.create(step: 3, description: 'Cut chicken breasts in half')
chick_parm.directions.create(step: 4, description: 'Coat with egg whites and mix with breadcrumbs and parmesan cheese')
chick_parm.directions.create(step: 5, description: 'Place chicken breasts in pan')
chick_parm.directions.create(step: 6, description: 'Cover chicken with aluminum foil and bake for 40 minutes')
chick_parm.directions.create(step: 7, description: 'Remove from oven pour marinara and sprinkle mozzarella cheese ontop')
chick_parm.directions.create(step: 8, description: 'Place uncovered pan back in oven for 5 minutes')

chick_parm.amounts.create(quantity: '4', measurement: nil, ingredient_id: 19)
chick_parm.amounts.create(quantity: '1/4', measurement: 'cups', ingredient_id: 20)
chick_parm.amounts.create(quantity: '3/4', measurement: 'cups', ingredient_id: 21)
chick_parm.amounts.create(quantity: '2', measurement: 'tsp', ingredient_id: 22)
chick_parm.amounts.create(quantity: '2', measurement: 'tsp', ingredient_id: 18)
chick_parm.amounts.create(quantity: '2', measurement: nil, ingredient_id: 9)
chick_parm.amounts.create(quantity: '1', measurement: 'cups', ingredient_id: 23)
chick_parm.amounts.create(quantity: '3/4', measurement: 'cups', ingredient_id: 24)




# Slow cooked chicken and sweet potatoes

Ingredient.create(id: 25, name: 'water')
Ingredient.create(id: 26, name: 'chopped onions')
Ingredient.create(id: 27, name: 'diced baby carrots')
Ingredient.create(id: 28, name: 'sweet potato')
Ingredient.create(id: 29, name: 'paprika')
Ingredient.create(id: 30, name: 'soy sauce')

chick_pot = Food.create(name: 'Slow-cooked chicken & sweet potatoes', calories: 584, carbs: 64, protein: 78, fat: 2, type_id: 2, cook_time: 360 , prep_time: 10, servings: 1)
chick_pot.directions.create(step: 1, description: 'Place all ingredients into slow cooker')
chick_pot.directions.create(step: 2, description: 'Cook for 6 hours on low or 4 on high')

chick_pot.amounts.create(quantity: '2', measurement: nil, ingredient_id: 19)
chick_pot.amounts.create(quantity: '1', measurement: 'cups', ingredient_id: 25)
chick_pot.amounts.create(quantity: '1', measurement: 'cups', ingredient_id: 26)
chick_pot.amounts.create(quantity: '1', measurement: 'cups', ingredient_id: 27)
chick_pot.amounts.create(quantity: '1', measurement: nil, ingredient_id: 28)
chick_pot.amounts.create(quantity: '1', measurement: 'tsp', ingredient_id: 29)
chick_pot.amounts.create(quantity: '1', measurement: 'tsp', ingredient_id: 17)
chick_pot.amounts.create(quantity: '1', measurement: 'tsp', ingredient_id: 18)
chick_pot.amounts.create(quantity: '1', measurement: 'tbsp', ingredient_id: 30)



#########
# Sides #
#########

# Chipotle chicken salad
Ingredient.create(id: 31, name: 'fat-free sour cream')
Ingredient.create(id: 32, name: 'lime juice')
Ingredient.create(id: 33, name: 'cilantro')
Ingredient.create(id: 34, name: 'southwestern seasoning')
Ingredient.create(id: 35, name: 'lettuce')
Ingredient.create(id: 36, name: 'black beans')
Ingredient.create(id: 37, name: 'tomatos')

chick_sal = Food.create(name: 'Chipotle Chicken Salad', calories: 260, carbs: 30, protein: 34, fat: 1, type_id: 4, cook_time: 10, prep_time: 10, servings: 1)
chick_sal.directions.create(step: 1, description: 'Slice chicken breast and cook on stove top or oven')
chick_sal.directions.create(step: 2, description: 'Place sour cream, lime juice, cilantro, seasoning, and salsa in bowl and stir.')
chick_sal.directions.create(step: 3, description: 'Place lettuce into another container and pour dressing on top')
chick_sal.directions.create(step: 4, description: 'Mix dressing well and place black beans, chicken, and tomato ontop of salad')

chick_sal.amounts.create(quantity: '3', measurement: 'tbsp', ingredient_id: 31)
chick_sal.amounts.create(quantity: '1', measurement: 'tbsp', ingredient_id: 32)
chick_sal.amounts.create(quantity: '1', measurement: 'tsp', ingredient_id: 33)
chick_sal.amounts.create(quantity: '1', measurement: 'tsp', ingredient_id: 34)
chick_sal.amounts.create(quantity: '2', measurement: 'tbsp', ingredient_id: 15)
chick_sal.amounts.create(quantity: '4', measurement: 'cups', ingredient_id: 35)
chick_sal.amounts.create(quantity: '1/4', measurement: 'cups', ingredient_id: 36)
chick_sal.amounts.create(quantity: '1', measurement: nil, ingredient_id: 19)





































# pizza = Food.create(name: 'pizza', is_vegitarian: false, is_glutan_free: false, calories: 410, protein: 32, carbs: 65, fat: 20, cook_time: 15, prep_time: 15, servings: 2, type_id: 2)
# salad = Food.create(name: 'salad', is_vegitarian: true, is_glutan_free: false, calories: 200, protein: 10, carbs: 15, fat: 10, cook_time: 0, prep_time: 10, type_id: 4)



# pizza.directions.create(step: 1, description: 'make dough')
# pizza.directions.create(step: 2, description: 'put in oven')

# Ingredient.create(name: 'dough')
# pizza.amounts.create(quantity: 0.23, measurement: 'cups', ingredient_id: 1)
