class Ingredient < ActiveRecord::Base
  has_many :foods, :through => :amounts
  has_many :amounts
end
