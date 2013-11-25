class CreateDirections < ActiveRecord::Migration
  def change
    create_table :directions do |t|
      t.text :description
      t.integer :step
      t.belongs_to :food

      t.timestamps
    end
    add_index :directions, :food_id
  end
end
