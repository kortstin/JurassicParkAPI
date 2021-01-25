class Dinosaur < ApplicationRecord
    belongs_to :cage
    validates :name, :species, :diet_type, :cage_id, presence: true

    def set_cage(c)

        return false if c.at_capacity?
        cage = c

    end

    def is_powered_down?
        return false if cage_id.power_status == "DOWN"
    end

end
