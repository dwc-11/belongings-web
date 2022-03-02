class Activity < ApplicationRecord
    has_many :relations
    has_many :items , through: :relations
    def self.search(keyword)
    where(["name like?", "%#{keyword}%"])
    end

    def self.transpotation(boolean)
    where(["transpotation like?", "%#{boolean}%"])
    end
end
