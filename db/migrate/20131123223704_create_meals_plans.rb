class CreateMealsPlans < ActiveRecord::Migration
  def change
    create_table :meals_plans, :id => false do |t|
      t.belongs_to :meal
      t.belongs_to :plan
    end

    add_index :meals_plans, [:meal_id, :plan_id]
    add_index :meals_plans, :meal_id
  end
end
