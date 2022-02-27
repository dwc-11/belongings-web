class Relation < ApplicationRecord
  belongs_to :activity ,optional: true
  belongs_to :item
end
