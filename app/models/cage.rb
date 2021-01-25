class Cage < ApplicationRecord
    has_many :dinosaurs
    validates :name, :max_capacity, :power_status, presence: true
    validates_uniqueness_of :name

    def dinosaur_count
        dinosaurs.count
    end

    def at_capacity?
        return dinosaur_count == max_capacity
    end

    def is_powered_down?
        return power_status == "DOWN"
    end

    def has_herbivore
        dinosaurs.where(diet_type:"Herbivore").count > 0
    end

    def has_carnivore
        dinosaurs.where(diet_type:"Carnivore").count > 0
    end

    def belongs_in_cage(diet)
        return true if dinosaur_count == 0
        return false if diet != 'Carnivore' && has_carnivore
        return false if diet != 'Herbivore' && has_herbivore
        return true if dinosaurs.where(diet_type: diet).count > 0
        return false
    end

    def has_dinosaurs?
        return dinosaur_count > 0
    end

end
