class Food < ActiveRecord::Base
  has_and_belongs_to_many :meals
  has_many :directions
  has_many :ingredients, :through => :amounts
  has_many :amounts
  belongs_to :type
end
