class CreateCages < ActiveRecord::Migration[6.1]
  def change
    create_table :cages do |t|
      t.string :name
      t.integer :max_capacity
      t.integer :number_of_dinosaurs
      t.string :power_status

      t.timestamps
    end
  end
end
