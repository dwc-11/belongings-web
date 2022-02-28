class Activity < ApplicationRecord
    has_many :relations
    has_many :items , through: :relations
    def self.search(keyword)
    where(["name like?", "%#{keyword}%"])
    end
end
