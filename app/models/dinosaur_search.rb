class DinosaurSearch < ApplicationRecord

    self.inheritance_column = "not_sti"

    def search_dinosaurs
        dinosaur = Dinosaur.all 

        dinosaur = dinosaur.where(['name LIKE ?', name]) if name.present?
        dinosaur = dinosaur.where(['species LIKE ?', species]) if species.present?

        return dinosaur
    end 

end
