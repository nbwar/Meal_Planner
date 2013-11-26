class CreateFoodsMeals < ActiveRecord::Migration
  def change
    create_table :foods_meals do |t|
      t.belongs_to :meal
      t.belongs_to :food
    end

    add_index :foods_meals, [:meal_id, :food_id]
  end
end
