class CageSearch < ApplicationRecord

    self.inheritance_column = "not_sti"

    def search_cages
        cage = Cage.all 

        cage = cage.where(['name LIKE ?', name]) if name.present?
        cage = cage.where(['power_status LIKE ?', power_status]) if power_status.present?

        return cage
    end 

end
