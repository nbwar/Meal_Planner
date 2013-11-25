class Amount < ActiveRecord::Base
  belongs_to :food
  belongs_to :ingredient
end
