class CreateCageSearches < ActiveRecord::Migration[6.1]
  def change
    create_table :cage_searches do |t|
      t.string :name
      t.string :power_status

      t.timestamps
    end
  end
end
