class CreateMealsFoods < ActiveRecord::Migration
  def change
    create_table :meals_foods do |t|
      t.belongs_to :meal
      t.belongs_to :food
    end

    add_index :meals_foods, [:meal_id, :food_id]
  end
end
