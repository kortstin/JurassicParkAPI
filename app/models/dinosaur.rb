class Dinosaur < ApplicationRecord
    belongs_to :cage
    validates :name, :species, :diet_type, :cage_id, presence: true
end
