class Cage < ApplicationRecord
    has_many :dinosaurs
    validates :name, :max_capacity, :power_status, presence: true

    def dinosaur_count
        dinosaurs.count
    end

    def at_capacity?
        return dinosaur_count == max_capacity
    end


end
