class Meal < ActiveRecord::Base
  has_and_belongs_to_many :plans
  has_and_belongs_to_many :foods
end
