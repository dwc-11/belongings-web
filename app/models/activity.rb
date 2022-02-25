class Activity < ApplicationRecord
  has_many :item , through: :relations
end
