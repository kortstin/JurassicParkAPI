class Cage < ApplicationRecord
    has_many :dinosaurs
    validates :name, :max_capacity, :power_status, presence: true
end
