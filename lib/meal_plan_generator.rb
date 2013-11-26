module MealPlanGenerator
  class Generator
    def self.generate calories, num_meals
      meals = []
      num_meals.times do
        meals << self.create_meal(calories/num_meals)
      end
      meals
    end

    def self.create_meal total_cals
      meal = Meal.new
      main = Food.find_dish(total_cals, 'main', 'false')

      # If no main dish (because not enough calories) search for a snack or shake
      main = Food.find_dish(total_cals, ['snack', 'shake'].sample, 'false') if main.nil?

      if main
        meal.foods << main
        total_cals -= main.calories

        while (total_cals > 0) do
          side = Food.find_dish(total_cals, 'side', 'false')
          if side
            meal.foods << side
            total_cals -= side.calories
          else
            total_cals = 0
          end
        end

        meal.calories = meal.foods.map(&:calories).reduce(:+)
        meal.carbs = meal.foods.map(&:carbs).reduce(:+)
        meal.fat = meal.foods.map(&:fat).reduce(:+)
        meal.protein = meal.foods.map(&:protein).reduce(:+)
        meal.cook_time = meal.foods.map(&:cook_time).reduce(:+)
        meal.prep_time = meal.foods.map(&:prep_time).reduce(:+)
      end

      meal
    end
  end

end

