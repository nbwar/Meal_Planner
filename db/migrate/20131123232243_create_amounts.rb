class CreateAmounts < ActiveRecord::Migration
  def change
    create_table :amounts do |t|
      t.belongs_to :food
      t.belongs_to :ingredient
      t.decimal :quantity
      t.string :measurement
      t.timestamps

    end

    add_index :amounts, [:food_id, :ingredient_id]
  end
end
