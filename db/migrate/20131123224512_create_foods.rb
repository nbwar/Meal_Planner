class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.boolean :is_vegitarian, :default => false
      t.boolean :is_glutan_free, :default => false
      t.integer :calories
      t.integer :fat
      t.integer :protein
      t.integer :carbs
      t.integer :prep_time
      t.integer :cook_time
      t.integer :servings
      t.belongs_to :type

      t.timestamps
    end
  end
end
