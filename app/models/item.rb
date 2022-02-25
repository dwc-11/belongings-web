class Item < ApplicationRecord
  has_many :relations
  has_many :activities , through: :relations
  accepts_nested_attributes_for :relations, allow_destroy: true
end
