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

        [:calories, :carbs, :fat, :protein, :cook_time, :prep_time].each do |sym|
          meal.send("#{sym}=", meal.foods.map(&sym).reduce(:+))
        end
      end

      meal
    end
  end

end

