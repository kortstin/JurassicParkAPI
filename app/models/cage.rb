class Cage < ApplicationRecord
    has_many :dinosaurs
    validates :name, :max_capacity, :power_status, presence: true
    validates_uniqueness_of :name
    validate :check_dinosaur_status_on_shutdown

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

=begin
    def belongs_in_cage(diet)
        return true if dinosaur_count == 0
        return false if diet != 'Carnivore' && has_carnivore
        return false if diet != 'Herbivore' && has_herbivore
        return true if dinosaurs.where(diet_type: diet).count > 0
        return false
    end
=end

    def check_dinosaur_status_on_shutdown
        if dinosaur_count > 0 and power_status == "DOWN"
            errors.add(:power_status, "Cage cannot be powered down, while it contains dinosaurs")
        end
    end

    def self.search(search)
        if search 
            where(["name LIKE ?","%#{search}%"])
        else
            Cage.all
        end
    end 

end
