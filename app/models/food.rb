class Food < ActiveRecord::Base
  has_and_belongs_to_many :meals
  has_many :directions, :dependent => :destroy
  has_many :ingredients, :through => :amounts
  has_many :amounts, :dependent => :destroy
  belongs_to :type

  accepts_nested_attributes_for :amounts, :ingredients

  def self.find_dish cals, category, breakfast
    joins(:type).where("foods.calories < ? AND types.category = ? AND types.breakfast = ?", cals, category, breakfast).sample
  end
end
