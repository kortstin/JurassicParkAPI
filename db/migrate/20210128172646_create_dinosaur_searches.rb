class CreateDinosaurSearches < ActiveRecord::Migration[6.1]
  def change
    create_table :dinosaur_searches do |t|
      t.string :name
      t.string :species

      t.timestamps
    end
  end
end
