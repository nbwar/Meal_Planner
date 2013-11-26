class Plan < ActiveRecord::Base
  has_and_belongs_to_many :meals


  def self.create_plan calories, meals
    MealPlanGenerator::Generator.generate(calories, meals)
  end

end
