module MealPlanGenerator
  class Generator
    def self.generate calories, num_meals
      meals = []
      num_meals.times do
        meals << self.create_meal(calories/num_meals)
      end
      meals
    end

    def self.create_meal cals
      # p Food.where("calories < ?", cals)
      Food.calorie_max(cals)
    end
  end

end

