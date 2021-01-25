class Dinosaur < ApplicationRecord
    belongs_to :cage
    validates :name, :species, :diet_type, :cage_id, presence: true
    validates_uniqueness_of :name


    def set_cage(c)

        return false if c.at_capacity?
        cage = c

    end

    def move_dino_to_powered_down_cage(c)

        return false if c.is_powered_down?
        cage = c

    end

    def is_herbivore?
        return diet_type == "Herbivore"
    end

    def is_carnivore?
        return diet_type == "Carnivore"
    end

end
