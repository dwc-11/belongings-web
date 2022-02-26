class Activity < ApplicationRecord
    has_many :relations
    has_many :items , through: :relations
end
