class AddCageReferenceToDinosaurs < ActiveRecord::Migration[6.1]
  def change
    add_reference :dinosaurs, :cage, null: false, foreign_key: true
  end
end
