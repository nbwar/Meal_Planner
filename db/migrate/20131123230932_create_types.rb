class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.boolean :breakfast, :default => false
      t.string :category

      t.timestamps
    end
  end
end
