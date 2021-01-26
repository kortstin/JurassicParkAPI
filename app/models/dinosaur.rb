class Dinosaur < ApplicationRecord
    belongs_to :cage
    validates :name, :species, :diet_type, :cage_id, presence: true
    validates_uniqueness_of :name
    validate :is_cage_at_capacity
    validate :is_cage_powered_down
    validate :cage_contains_diet_mismatch


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

    def is_cage_powered_down
        if cage.is_powered_down?
            errors.add(:cage_id, "Chosen cage is powered down. Please choose another cage!")
        end
    end

    def is_cage_at_capacity
        if cage.at_capacity?
            errors.add(:cage_id, "Chosen cage is full. Please choose another cage!")
            end
    end

    def cage_contains_diet_mismatch
        if cage.has_carnivore == true and is_herbivore?
            errors.add(:cage_id, "Chosen cage contains carnivores! This dinosaur will be eaten!")
        else
            if cage.has_herbivore == true and is_carnivore?
                errors.add(:cage_id, "Chosen cage contains herbivores! This dinosaur will eat the others!")
            end
        end
    end


end
